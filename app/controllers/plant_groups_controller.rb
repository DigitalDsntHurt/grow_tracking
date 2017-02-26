class PlantGroupsController < ApplicationController
  before_action :set_plant_group, only: [:show, :edit, :update, :destroy]

  # GET /plant_groups
  # GET /plant_groups.json
  def index
    @plant_groups = PlantGroup.all
    @rooms = Room.all
  end

  # GET /plant_groups/1
  # GET /plant_groups/1.json
  def show
    @rooms = Room.all
  end

  # GET /plant_groups/new
  def new
    @plant_group = PlantGroup.new
  end

  # GET /plant_groups/1/edit
  def edit
  end

  # POST /plant_groups
  # POST /plant_groups.json
  def create
    @plant_group = PlantGroup.new(plant_group_params)

    respond_to do |format|
      if @plant_group.save
        format.html { redirect_to @plant_group, notice: 'Plant group was successfully created.' }
        format.json { render :show, status: :created, location: @plant_group }
      else
        format.html { render :new }
        format.json { render json: @plant_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_groups/1
  # PATCH/PUT /plant_groups/1.json
  def update
    respond_to do |format|
      if @plant_group.update(plant_group_params)
        format.html { redirect_to @plant_group, notice: 'Plant group was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_group }
      else
        format.html { render :edit }
        format.json { render json: @plant_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_groups/1
  # DELETE /plant_groups/1.json
  def destroy
    @plant_group.destroy
    respond_to do |format|
      format.html { redirect_to plant_groups_url, notice: 'Plant group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_group
      @plant_group = PlantGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_group_params
      params.require(:plant_group).permit(:nickname, :quantity, :clone_date, :current_room_id, :notes)
    end
end
