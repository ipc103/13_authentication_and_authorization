class User < ActiveRecord::Base
  has_many :tweets

  validates :username, presence: true, length: {minimum: 3}, uniqueness: true

  has_secure_password
end
