class ProgramsController < ApplicationController
  def index
  end

  def show
  	 @program = Program.find_by_id(params[:id])

     puts '*' * 20 
     puts params[:id]

     puts '*' * 20 
     puts @program

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

  end

  def new
  end

  def edit
  end


end
