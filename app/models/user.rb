class User < ApplicationRecord
	def password_hash
		@password = @password.nil? ? BCrypt::Password.new(password_hash) : @password
	end
	def password_hash=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.password_hash = @password
	end
end
