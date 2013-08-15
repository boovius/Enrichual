class DailyRating
  include MongoMapper::EmbeddedDocument

  key :rating, Integer 

  timestamps! 
  
end
