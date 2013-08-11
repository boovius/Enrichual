class PasswordController < ApplicationController
	def edit
	  # find the user with the passed in code
	  # then display the reset password form
	  @user = User.where(code: params[:code])

	  unless @user and @user.expires_at > Time.now
	    redirect_to login_url, alert: "Reset link has expired. Please try again."
	  end
	end

	def update
	  # Find the user with the unique reset code
	  @user = User.where(code: params[:user][:code])

	  # If the user exists and the code has not expired
	  # then do the password update and set the code and
	  # expiry to null (expire the reset page)
	  if @user and @user.expires_at > Time.now
	    @user.update_attributes(user_params)
	    @user.code = nil
	    @user.expires_at = nil

	    if @user.save
	      # Password update was successful, log the user in and
	      # redirect to the home page
	      session[:user_id] = @user.id
	      redirect_to root_url, notice: "Password changed successfully."
	    else
	      # Password update failed, redirect to the login page
	      redirect_to login_url, alert: "Reset link has expired. Please try again."
	    end
	  else
	    # User not found or code expired, redirect to the login page
	    redirect_to login_url, alert: "Reset link has expired. Please try again."
	  end
	end

	private

	def user_params
	  params.require(:user).permit(
	    :password,
	    :password_confirmation,
	    :code,
	    :expires_at
	  )
	end
end
