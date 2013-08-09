class User
  include MongoMapper::Document

  

  key :name, String
  key :email, String
  key :fish, String
  key :salt, String
  key :is_male, Boolean
  key :born_on, Date

 
  many :user_rituals
  many :rituals




  #belongs_to :creator, :polymorphic => true
  #belongs_to :forkers, :polymorphic => true

  #key :creations, Array
  #key :forks, Array

  #many :rituals, :as :creations
  #many :rituals, :as :forks 

  #key :creator_ids, Array
  #many :rituals, :in => :creator_ids

  #key :forker_ids, Array
  #many :rituals, :in => :forker_ids


end
