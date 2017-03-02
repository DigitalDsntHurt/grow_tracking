json.extract! plant_group_update, :id, :plant_group_id, :update_type, :quantity, :transplant_origin_room_id, :transplant_destination_room_id, :notes, :created_at, :updated_at
json.url plant_group_update_url(plant_group_update, format: :json)
