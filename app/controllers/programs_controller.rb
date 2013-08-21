class ProgramsController < ApplicationController
  def index
  end

  def new
    @program = Program.new
  end

  def show
  	 @program = Program.find(params[:id])

     @user = current_user

     if @user 
       @user.rituals.each do |ritual|
         if @program.id.to_s == ritual.program_id.to_s
           @implemented_by_user = true
           break
         else 
           @implemented_by_user = false
         end
       end
     end

     @comments = @program.comments

  	 @partial = params[:code]
  	
  	 @step1 = @program.steps[0]
  	 @step2 = @program.steps[1]
  	 @step3 = @program.steps[2]
  	 @step_temp = @program.steps[0]



   	 if @partial
  	   if request.xhr?
  	     render :partial => "#{params[:code]}"
  	   end
  	 end

     current_program

  end

  def create 

    @program = Program.new program_params

    #step1
      step1 = Step.new
      step1.name = params[:step1_name]
      step1.description = params[:step1_description]
      step1.location = params[:step1_location]
      step1.duration = params[:step1_duration]
      @program.steps << step1
    #step2
      step2 = Step.new
      step2.name = params[:step2_name]
      step2.description = params[:step2_description]
      step2.location = params[:step2_location]
      step2.duration = params[:step2_duration]
      @program.steps << step2
    #step3
      step3 = Step.new
      step3.name = params[:step3_name]
      step3.description = params[:step3_description]
      step3.location = params[:step3_location]
      step3.duration = params[:step3_duration]
      @program.steps << step3

    @program['creator_id'] = current_user.id
    @program['target'] = @program['target'].downcase

    #debug('@program', @program.save)

    @program.save

    if @program
      redirect_to program_path(@program.id)
    end

  end

  def edit
  end

  private 

  def program_params
    params.require(:program).permit(:title, :target, :description, :frequency, :min_rating_descrip, :max_rating_descrip)
  end

end
