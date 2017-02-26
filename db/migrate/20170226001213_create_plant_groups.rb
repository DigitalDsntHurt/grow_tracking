class CreatePlantGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :plant_groups do |t|
      t.string :nickname
      t.integer :quantity
      t.date :clone_date
      t.integer :current_room_id
      t.string :notes

      t.timestamps
    end
  end
end
