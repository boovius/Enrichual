class Registrant
  include MongoMapper::Document

  attr_accessible :email

 	key :email, String, unique: true 
  key :code, String
  key :expires_at, Time

  timestamps!

end
