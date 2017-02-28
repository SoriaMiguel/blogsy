class User < ApplicationRecord
  has_many :posts
  validates :email_address, presence: true
  validates :username, presence: true
end
