class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def create 
        message = Message.create(message_params) 
        # byebug
        ActionCable.server.broadcast 'messages_channel', params
        render json: message
    end


    private

    def message_params
        params.require(:message).permit(:body)
    end
end
