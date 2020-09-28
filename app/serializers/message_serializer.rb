class MessageSerializer < ActiveModel::Serializer
    attributes :id, :body, :chatroom_id, :chatroom_title, :user_id, :username

    def chatroom_title
        object.chatroom.title
    end

    def username
        object.user.username
    end
end