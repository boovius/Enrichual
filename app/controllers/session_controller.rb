class SessionController < ApplicationController
  def new
  	
  end

  def create
		if params[:password].blank?
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
				debug('params[:program_id]', params[:program_id])
				if current_program
					redirect_to program_path(program.id), notice: "You've successfully logged in!"
				else
					redirect_to user_path(user.id), notice: "You've successfully logged in!"
				end
	  		
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
