class UserRitualsController < ApplicationController

  def new
  	@ritual = Ritual.find_by_id(params[:ritual_id])

  end

  def create
  	ritual = Ritual.find (params[:user_ritual][:ritual_id])
  	user_ritual = UserRitual.new(ritual_params)
  	user_ritual.title = ritual.title

  	current_user.user_rituals << user_ritual
  	current_user.save 
  end


  private

  def ritual_params
  	params.require(:user_ritual).permit(:ritual_id, :starts_on, :ends_on, :starting_level)
  end
end
