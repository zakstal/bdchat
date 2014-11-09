class NotificationsController < ApplicationController

	  skip_before_action :verify_authenticity_token
 
  def notify
  	
  	Chat.create!(from_user_id: 1, to_user_id: 2, chat: params["body"])

	client = Twilio::REST::Client.new 'AC035e8397a69c77b3b8e9114cd1874b76', '182b2d908203f792b47b71a403bb30cc'
	
	message = client.messages.create from: '5102842678', to: '2068532262', body: params['body']
	render plain: message.status
  end
 

end

