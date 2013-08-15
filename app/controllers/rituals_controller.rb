class RitualsController < ApplicationController

  def new
  	@program = Program.find_by_id(params[:program_id])

  end

  def create
  	program = Program.find (params[:ritual][:program_id])
  	ritual = Ritual.new(ritual_params)
  	ritual.title = ritual.title

  	current_user.rituals << ritual
  	current_user.save 
  end


  private

  def ritual_params
  	params.require(:ritual).permit(:program_id, :starts_on, :ends_on, :starting_level)
  end
end
