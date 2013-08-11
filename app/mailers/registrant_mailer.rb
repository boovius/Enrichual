class RegistrantMailer < ActionMailer::Base
  default from: "from@example.com"

  
  def registrant_email(registrant)
  	@registrant = registrant

  	mail to: @registrant.email, subject: "Register for Street Beat"
  end
end
