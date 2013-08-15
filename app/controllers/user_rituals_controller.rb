class UserRitualsController < ApplicationController

  def new
  	@ritual = Ritual.find_by_id(params[:ritual_id])

  	puts @ritual
  end

  def post
  end
end
