class UserRitual
  include MongoMapper::EmbeddedDocument

  belongs_to :user
  one :ritual  

  key :starts_on, Date
  key :ends_on, Date
  
  many :daily_ratings


end
