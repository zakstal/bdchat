class UsersController < ApplicationController

	def show
		@chat = Chat.all

	end

	def index
		@chat = Chat.all
		render json: @chat
	end

end
