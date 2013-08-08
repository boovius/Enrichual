class Step
  include MongoMapper::EmbeddedDocument

  key :name, String
  key :description, String
  key :location, String
  key :duration, Integer

  many :supplies 

end
