class DebugController < ApplicationController
  def index
  	@rooms = Room.all
  	@plant_groups = PlantGroup.all
  	@plant_group_updates = PlantGroupUpdate.all
  end

  def search
  end
  
end
