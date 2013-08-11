class RitualsController < ApplicationController
  def index
  end

  def show
  	 @ritual = Ritual.find params[:id]

  end

  def new
  end

  def edit
  end


end
