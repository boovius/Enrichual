class RitualsController < ApplicationController
  def index
  end

  def show
  	 @ritual = Ritual.find params[:id]

  	 @partial = params[:code]

  	 puts '*'*20
  	 puts params
  	 puts @partial
  	 
  	 if @partial
  	   if request.xhr?
  	     render :partial => "#{params[:code]}"
  	   end
  	 end

  	 @step1 = @ritual.steps[0]
  	 @step2 = @ritual.steps[1]
  	 @step3 = @ritual.steps[2]

  end

  def new
  end

  def edit
  end


end
