class User < ApplicationRecord

	has_many :gossips

	belongs_to :city


	def self.find(id)
		puts '£' * 60
		puts id
		user_array = User.all
		return user_array[id.to_i]
	end

end
