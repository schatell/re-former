
class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
	validates :password, presence: true
end
