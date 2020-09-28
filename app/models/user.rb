class User < ApplicationRecord
  has_many :messages
  has_many :memberships
  has_many :chatrooms, through: :memberships
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  
end
