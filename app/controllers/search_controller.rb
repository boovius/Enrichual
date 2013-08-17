class SearchController < ApplicationController
  def index

  	puts '*' * 20
  	puts 'params'
  	puts params
  	@query = params[:query]
  	@results = []


  	search_words = params[:query].split(' ')

  	search_words.each do |word|
  		result = Program.where(target: word)
  		result.each do |r|
  			@results << r 
  		end
  	end

  	puts '*' *20
  	puts 'results'
  	puts @results
  end
end
