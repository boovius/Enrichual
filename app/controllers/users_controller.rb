class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  
    @user = User.find session[:user_id]
    
    @rituals = @user.rituals

    @created_programs = Program.find_all_by_creator_id(@user.id)
   
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user
      redirect_to root_url
    else
      render :new
    end
  end

  def update

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

  def destroy
    user = User.find params[:id]
    user.destroy

    redirect_to root_url, status: 303
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :born_on, :is_male)
  end

end
