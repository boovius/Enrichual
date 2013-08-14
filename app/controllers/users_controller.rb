class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

    
      @user = User.find session[:user_id]

      puts '*' * 20 
      puts 'user id'
      puts @user.id
      
      @user_rituals = @user.user_rituals

      puts '*' * 20
      puts 'user rituals' 
      puts @user_rituals

      @created_rituals = Ritual.find_all_by_creator_id(@user.id)

      puts '*' * 20 
      puts 'created rituals'
      puts @created_rituals

   
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

  def edit
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
