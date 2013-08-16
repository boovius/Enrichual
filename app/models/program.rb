class Program
  include MongoMapper::Document

  key :title, String, unique: true 
  key :target, String
  key :objective, String
  key :description, String
  key :frequency, String
  key :days_to_complete, Integer
  key :min_rating_descrip, String
  key :max_rating_descrip, String
  key :users_rating, Integer

  #embedded associations
  many :steps
  many :comments

  #creator reference assocation
  belongs_to  :creator, :class_name => "User"
  many 				:rituals

  #forked from original ritual reference association
  belongs_to :forked_from, :class_name => "Program"
  many :programs

  timestamps!


  def total_duration 
    total_duration = 0
    steps.each do |step| 
      total_duration = total_duration + step.duration 
    end
    hours = total_duration/60
    mins = total_duration%60
    if mins == 0
      total duration = "#{hours} hours"
    elsif hours == 0
      total_duration = "#{mins} minutes"  
    else
      total_duration = "#{hours} hours and #{mins} minutes"
    end
    total_duration
  end


end
