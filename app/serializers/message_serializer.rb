class MessageSerializer < ActiveModel::Serializer
    attributes :id, :body, :chatroom_id, :chatroom_title, :user_id
    # belongs_to :user

    def chatroom_title
        object.chatroom.title
    end
end