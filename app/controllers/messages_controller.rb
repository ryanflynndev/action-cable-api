class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def create 
        message = Message.create(message_params) 
        render json: MessageSerializer.new(message)
    end


    private

    def message_params
        params.require(:message).permit(:body)
    end
end
