class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def create 
        message = Message.create(message_params) 
        
        chatroom = message.chatroom

        ChatroomChannel.broadcast_to(chatroom, {
            type: "Add Message",
            message: MessageSerializer.new(message)
        })    

        render json: message
    end

    private

    def message_params
        params.require(:message).permit(:body, :chatroom_id)
    end
end
