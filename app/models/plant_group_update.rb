class PlantGroupUpdate < ApplicationRecord
	has_one :room
	belongs_to :plant_group

	validates :plant_group, :update_type, :quantity, presence: true

end
