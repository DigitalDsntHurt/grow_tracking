class PlantGroupUpdate < ApplicationRecord
	has_one :room
	belongs_to :plant_group
end
