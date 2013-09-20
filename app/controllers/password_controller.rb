class PasswordController < ApplicationController
	def edit
		# find the user with the passed in code
		# then display the reset password form

		debug("params[:code]", params[:code])

		@user = User.first(code: params[:code])

		debug("@user[:name]", @user[:name])

		unless @user and @user.expires_at > Time.now
		  redirect_to login_url, alert: "Reset link has expired. Please try again."
		end
	end

	def update

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
