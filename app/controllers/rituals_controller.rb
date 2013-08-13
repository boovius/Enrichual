class RitualsController < ApplicationController
  def index
  end

  def show
  	 @ritual = Ritual.find params[:id]

     puts @ritual.comments
     @comments = @ritual.comments

  	 @partial = params[:code]
  	
  	 @step1 = @ritual.steps[0]
  	 @step2 = @ritual.steps[1]
  	 @step3 = @ritual.steps[2]
  	 @step_temp = @ritual.steps[0]

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
