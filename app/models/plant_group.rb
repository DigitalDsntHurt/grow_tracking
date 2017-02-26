class PlantGroup < ApplicationRecord
	has_many :plant_group_updates

	validates :quantity, presence: true #:nickname,

	after_create :create_clone_update

	private
	def create_clone_update
		PlantGroupUpdate.create!(plant_group: self, update_type: "clone", quantity: self.quantity)
	end
end
