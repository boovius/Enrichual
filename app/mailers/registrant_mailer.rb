class RegistrantMailer < ActionMailer::Base
  default from: "sign-up@enrichual.com"

  
  def registrant_email(registrant)
  	@registrant = registrant

  	mail to: @registrant.email, subject: "Sign up for Enrichual."
  end
end
