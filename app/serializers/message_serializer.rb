class MessageSerializer < ActiveModel::Serializer
    attributes :id, :body, :chatroom_id, :chatroom_title

    def chatroom_title
        object.chatroom.title
    end
end