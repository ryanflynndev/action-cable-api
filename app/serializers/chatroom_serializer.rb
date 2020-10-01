class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, :description
  has_many :messages
  has_many :memberships
  has_many :users, through: :memberships
end

