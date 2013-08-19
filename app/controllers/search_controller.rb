class SearchController < ApplicationController
  def index

  	@query = params[:query]
  	@results = []

    @programs = Program.all

    @programs.each do |program|
      program.target.downcase!
      program.save
    end

  	search_words = params[:query].split(' ')

    puts '*' * 20 

  	search_words.each do |word|
  		result = Program.where(target: word)
  		result.each do |r|
  			@results << r 
  		end
  	end


  end
end
