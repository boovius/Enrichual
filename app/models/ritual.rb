class Ritual
  include MongoMapper::Document

  key :title, String
  key :target, String
  key :objective, String
  key :description, String
  key :frequency, String
  key :days_to_complete, Integer
  key :min_rating_descrip, String
  key :max_rating_descrip, String
  key :users_rating, Integer

  many :steps

  one :user, :as => :creator
  one :user, :as => :forker


end
