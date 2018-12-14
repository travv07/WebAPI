class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	has_secure_password
	validates :email, presence: true
	validates :password, presence: true
	validates :password_confirmation, presence: true
end
