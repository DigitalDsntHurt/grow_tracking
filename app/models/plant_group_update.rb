class PlantGroupUpdate < ApplicationRecord
	has_one :room
	belongs_to :plant_group

	validates :plant_group, :update_type, :quantity, presence: true

	after_create :update_plant_group
	#after_destroy :update_plant_group

	private
	def update_plant_group
		@pg = self.plant_group
		@pg.update!(:current_room_id => self.transplant_destination_room_id, :quantity => self.quantity)
	end
end
