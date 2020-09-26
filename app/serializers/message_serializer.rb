class MessageSerializer < ActiveModel::Serializer
    # include FastJsonapi::ObjectSerializer
    attributes :id, :body, :chatroom_id, :chatroom_title

    def chatroom_title
        object.chatroom.title
    end
end