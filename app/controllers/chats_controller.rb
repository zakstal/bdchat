class ChatsController < ApplicationController

	

	def rec
		puts "here!!!!!!!!!!!!!!!"
		puts params
		Chat.create!(from_user_id: 1, to_user_id: 2, chat: params["Body"])
		

	end

	def sen
		puts "here TOO@@@@@@@@@@"
		puts params
		Chat.create!(from_user_id: 1, to_user_id: 2, chat: params["body"])
		render json: params['body']
	end

	def chat_params
		
	end
end
