class MessageSerializer < ActiveModel::Serializer
    attributes :id, :body, :chatroom_id, :chatroom_title, :user_id, :username, :user_avatar

    def chatroom_title
        object.chatroom.title
    end

    def username
        object.user.username
    end

    def user_avatar
        object.user.avatar
    end
end