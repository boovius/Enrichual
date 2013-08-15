class Ritual
  include MongoMapper::EmbeddedDocument

  belongs_to :user

  # pattern keys
  key :title, String
  key :target, String
  key :objective, String
  key :description, String
  key :frequency, String
  key :days_to_complete, Integer
  key :min_rating_descrip, String
  key :max_rating_descrip, String
  key :users_rating, Integer
  key :program_id, String

  #unique keys
  key :starts_on, Date
  key :ends_on, Date
  key :starting_level, Integer


  
  many :daily_ratings


end
