class Room < ApplicationRecord
	validates :name, presence: true
	
	has_many :plant_group_updates
end
