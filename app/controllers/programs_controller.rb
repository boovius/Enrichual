class ProgramsController < ApplicationController
  def index
    @program = Program.new
  end

  def show
  	 @program = Program.find_by_id(params[:id])

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

  def new
  end

  def create 
    @program.target.downcase
  end

  def edit
  end


end
