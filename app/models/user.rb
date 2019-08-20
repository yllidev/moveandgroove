class User < ApplicationRecord
		
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :activities
 def self.current
		Thread.current[:user]
	end
	def self.current=(user)
		Thread.current[:user] = user
	end	
end
