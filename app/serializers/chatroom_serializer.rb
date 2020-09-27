class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :messages
  has_many :memberships
end

