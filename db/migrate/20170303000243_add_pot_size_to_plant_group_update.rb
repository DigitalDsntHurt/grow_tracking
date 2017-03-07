class AddPotSizeToPlantGroupUpdate < ActiveRecord::Migration[5.0]
  def change
    add_column :plant_group_updates, :pot_size, :string
  end
end
