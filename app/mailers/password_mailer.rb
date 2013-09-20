class PasswordMailer < ActionMailer::Base
  default from: "reset@enrichual.com"

  def set_password_email(user)
  	@user = user

  	mail to: @user.email, subject: "Reset your Enrichual password"
  end
end
