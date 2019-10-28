class Gossip < ApplicationRecord
	has_many :linktags
	has_many :tags, through: :linktags

	belongs_to :user

	def self.find(id)

		gossip_array = Gossip.all
		return gossip_array[id.to_i]

	end

end
