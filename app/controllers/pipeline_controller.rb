class PipelineController < ApplicationController
  def pipeline
  	@rooms = Room.all
  	@plant_groups = PlantGroup.all
  	@plant_group_updates = PlantGroupUpdate.all

  end
end
