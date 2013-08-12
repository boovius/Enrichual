class DailyRating
  include MongoMapper::EmbeddedDocument

  key :rating, Integer 
  key :date, Date
  
end
