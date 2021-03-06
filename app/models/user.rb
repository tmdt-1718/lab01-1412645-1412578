class User < ApplicationRecord
	has_many :blogs
	def password
		@password ||= BCrypt::Password.new(password_hash)
	end
	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.password_hash = @password
	end
end
