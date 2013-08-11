class PasswordMailer < ActionMailer::Base
  default from: "from@example.com"

  def reset_email(user)
  	@user = user

  	mail to: @user.email, subject: "Change your Street Beat credentials"
  end
end
