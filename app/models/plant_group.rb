class PlantGroup < ApplicationRecord
	has_many :plant_group_updates, dependent: :destroy

	validates :quantity, :nickname, :current_room_id, :clone_date, presence: true
	after_create :create_clone_update



	private
	def create_clone_update
		PlantGroupUpdate.create!(plant_group: self, update_type: "clone", quantity: self.quantity, transplant_destination_room_id: self.current_room_id, transplant_origin_room_id: self.current_room_id)
	end
end
