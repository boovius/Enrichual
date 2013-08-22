class RegistrantMailer < ActionMailer::Base
  default from: "sign-up@enritual.com"

  
  def registrant_email(registrant)
  	@registrant = registrant

  	mail to: @registrant.email, subject: "Sign up for Enritual."
  end
end
