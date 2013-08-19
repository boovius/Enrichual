require 'twilio-ruby'
class SmsController < ApplicationController

  def send_sms
		number_to_send_to = "6313556566"
		
		 twilio_sid = "ACafaf195e9421e1bcc352941eac8cfecb"
		 twilio_token = "503f9854cd99029e55e3ef011d31968a"
		 twilio_phone_number = "6312914376"
		
		 @client = Twilio::REST::Client.new twilio_sid, twilio_token
		
		 @client.account.sms.messages.create(from: "+1#{twilio_phone_number}", to: number_to_send_to, body: "This is a message. Hooray! It gets sent to #{number_to_send_to}. And sent from #{twilio_phone_number}")

		 hello
  end

  def receive_sms
  	message_body = params["Body"]
  	from_number = params["From"]

  	
  	 
  	#SMSLogger.log_text_message from_number, message_body

  	debug('message_body', message_body)
  	debug('from_number', from_number)

	  @twiml = Twilio::TwiML::Response.new do |r|
	    r.Sms "You're kicking ass. Thanks for the message!"
	  end


  end
end
