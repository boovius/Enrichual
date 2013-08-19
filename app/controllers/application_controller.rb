class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def current_user
     @current_user ||= User.find(session[:user_id])
   end
   
   def is_authenticated?
     redirect_to login_url unless current_user
   end

   def debug(key, value)
   	puts '*' * 20
   	puts key
   	puts value
   end

end
