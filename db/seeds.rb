
## Seed 5 standard rooms
Room.create!(:name => "mom")
Room.create!(:name => "veg 1")
Room.create!(:name => "veg 2")
Room.create!(:name => "flower")
Room.create!(:name => "dry")


today = Date.today
## Seed 3 dummy Plant Groups
#5.times do 
#	PlantGroup.create!(:nickname => "#{today.month} Run", :quantity => rand(85..120), :clone_date => today, :current_room_id => 1)
#	today = today.prev_month
#end