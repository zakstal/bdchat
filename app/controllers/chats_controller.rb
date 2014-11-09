class ChatsController < ApplicationController

	

	def rec
		puts "helloooisdofisodifjsodifjsodifjsodifjsodifjsodifjsodifjso"
		Chat.all.each do |post|
			post.destroy
		end
		render json: "chats deleted"
	end

	def sen

		if params["Body"] == "H"
			word = "Hi mom Happy Birthday!"
		else
			word = params["Body"]
		end

		Chat.create!(from_user_id: 1, to_user_id: 2, chat: word)
		render json: params['body']
	end

	def chat_params
		
	end
end
