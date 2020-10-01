class MembershipSerializer < ActiveModel::Serializer
  attributes :user_id, :chatroom_id, :id
end