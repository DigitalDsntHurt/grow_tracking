class PlantGroupUpdate < ApplicationRecord
	has_one :room
	belongs_to :plant_group

	validates :plant_group, :update_type, presence: true

	before_create :ensure_current_room_id_has_value, :ensure_quantity_has_value

	private
	
	def ensure_quantity_has_value
#		if self.quantity == nil
#			self.plant_group_id
	end

	def ensure_current_room_id_has_value

	end

end
