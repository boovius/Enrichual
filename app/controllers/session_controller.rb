class SessionController < ApplicationController
  def new
  end

  def create
  	puts '*'*20
		puts 'in session create'
		if params[:password].blank?
			puts '*'*20
			puts 'password blank'
			user = User.find_by_email(params[:email])

			if user
				user.code = SecureRandom.urlsafe_base64
				user.expires_at = Time.now + 4.hours
				user.save

				PasswordMailer.set_password_email(user).deliver
			else
				registrant = Registrant.new
				registrant.email = params[:email]
				registrant.code = SecureRandom.urlsafe_base64
				registrant.expires_at = Time.now + 4.hours
				registrant.save

				RegistrantMailer.registrant_email(registrant).deliver
			end

			render :new
		else
  		user = User.authenticate(params[:email], params[:password])

  		if user
			session[:user_id] = user.id
	  		redirect_to root_url, notice: "You've successfully logged in!"
	  	else
	  		render :new
	  	end
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "You've successfully logged out."
  end
end
