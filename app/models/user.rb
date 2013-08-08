class User
  include MongoMapper::Document

  

  key :name, String
  key :email, String
  key :fish, String
  key :salt, String
  key :is_male, Boolean
  key :born_on, Date
 
  many :user_rituals

  key :created_ritual_ids, Array
  many :created_rituals, :in => :created_ritual_ids

  key :forked_ritual_ids, Array
  many :forked_rituals, :in => :forked_ritual_ids

  belongs_to :creator, :polymorphic => true
  belongs_to :forker, :polymorphic => true


end
