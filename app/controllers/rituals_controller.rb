class RitualsController < ApplicationController

  def new
    is_authenticated?
  	@program = Program.find_by_id(params[:program_id])
    @ritual = Ritual.new
    @user = current_user

  end

  def create
  	program = Program.find (params[:ritual][:program_id])
  	ritual = Ritual.new(ritual_params)
  	ritual.title =              program.title
    ritual.target =             program.target
    ritual.objective =          program.objective
    ritual.description =        program.description
    ritual.frequency =          program.frequency
    ritual.days_to_complete =   program.days_to_complete
    ritual.min_rating_descrip = program.min_rating_descrip
    ritual.max_rating_descrip = program.max_rating_descrip
    ritual.users_rating =       program.users_rating
    ritual.steps =              program.steps

  	current_user.rituals << ritual
  	current_user.save 

    redirect_to user_path(current_user.id), notice: "Ritual successfully implemented!"

  end


  private

  def ritual_params
  	params.require(:ritual).permit(:program_id, :starts_on, :ends_on, :starting_level, :checkin_time)
  end
end
