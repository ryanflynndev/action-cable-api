class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar
  has_many :messages
  has_many :memberships
  has_many :chatrooms, through: :memberships
end
