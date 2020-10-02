class ChatroomsController < ApplicationController

    def index
        chatrooms = Chatroom.all
        render json: chatrooms
    end

    def create 
      chatroom = Chatroom.create(chatroom_params)
      render json: chatroom
    end

    private
    
    def chatroom_params
      params.require(:chatroom).permit(:title, :img_url, :description)
    end
end