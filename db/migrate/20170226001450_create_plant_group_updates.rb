class CreatePlantGroupUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :plant_group_updates do |t|
      t.belongs_to :plant_group, index: true
      t.string :update_type
      t.integer :quantity
      t.integer :transplant_origin_room_id
      t.integer :transplant_destination_room_id
      t.string :notes

      t.timestamps
    end
  end
end
