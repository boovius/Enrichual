class Registrant
  include MongoMapper::Document

 	key :email, String, unique: true 
  key :code, String
  key :expires_at, Time

  timestamps!

end
