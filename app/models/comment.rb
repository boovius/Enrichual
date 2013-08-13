class Comment
  include MongoMapper::EmbeddedDocument

  key :comment, String
  belongs_to :user

  timestamps!  

end
