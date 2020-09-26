class ChatroomsController < ApplicationController

    def index
        chatrooms = Chatroom.all
        # byebug
        render json: chatrooms
    end

    def create 
      chatroom = Chatroom.create(chatroom_params)
      render json: chatroom
    end

    private
    
    def chatroom_params
      params.permit(:chatroom).require(:title)
    end
end