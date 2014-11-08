class ChatsController < ApplicationController

	

	def rec
		puts "here!!!!!!!!!!!!!!!"
		puts params["Body"]
		Chat.create!(from_user_id: 1, to_user_id: 2, chat: params["Body"])
		render json: params['body']

	end

	def sen
		puts "here TOO@@@@@@@@@@"
		puts params
		Chat.create!(from_user_id: 1, to_user_id: 2, chat: params["body"])
		render json: params['body']
		# send_number = params[:send_number]

		# twilio_sid = "PN4cd47379624a7b9bb4a0835cbf00a4f6"
	 #    twilio_token = "foobar"
	 #    twilio_phone_number = "15102842678"
	 
	 #    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	 #    @twilio_client.account.sms.messages.create(
	 #      :from => "+1#{twilio_phone_number}",
	 #      :to => number_to_send_to,
	 #      :body => "This is an message. It gets sent to #{number_to_send_to}"
  #   )
	end

	def chat_params
		
	end
end
