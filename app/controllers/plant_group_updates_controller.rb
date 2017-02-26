class PlantGroupUpdatesController < ApplicationController
  before_action :set_plant_group_update, only: [:show, :edit, :update, :destroy]

  # GET /plant_group_updates
  # GET /plant_group_updates.json
  def index
    @plant_group_updates = PlantGroupUpdate.all
  end

  # GET /plant_group_updates/1
  # GET /plant_group_updates/1.json
  def show
  end

  # GET /plant_group_updates/new
  def new
    @plant_group_update = PlantGroupUpdate.new
  end

  # GET /plant_group_updates/1/edit
  def edit
  end

  # POST /plant_group_updates
  # POST /plant_group_updates.json
  def create
    @plant_group_update = PlantGroupUpdate.new(plant_group_update_params)

    respond_to do |format|
      if @plant_group_update.save
        format.html { redirect_to @plant_group_update, notice: 'Plant group update was successfully created.' }
        format.json { render :show, status: :created, location: @plant_group_update }
      else
        format.html { render :new }
        format.json { render json: @plant_group_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_group_updates/1
  # PATCH/PUT /plant_group_updates/1.json
  def update
    respond_to do |format|
      if @plant_group_update.update(plant_group_update_params)
        format.html { redirect_to @plant_group_update, notice: 'Plant group update was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_group_update }
      else
        format.html { render :edit }
        format.json { render json: @plant_group_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_group_updates/1
  # DELETE /plant_group_updates/1.json
  def destroy
    @plant_group_update.destroy
    respond_to do |format|
      format.html { redirect_to plant_group_updates_url, notice: 'Plant group update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_group_update
      @plant_group_update = PlantGroupUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_group_update_params
      params.require(:plant_group_update).permit(:plant_group_id, :update_type, :quantity, :transplant_origin_room_id, :transplant_destination_room_id, :current_room_id, :notes)
    end
end
