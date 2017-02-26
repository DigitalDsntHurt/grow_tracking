require 'test_helper'

class PlantGroupUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_group_update = plant_group_updates(:one)
  end

  test "should get index" do
    get plant_group_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_group_update_url
    assert_response :success
  end

  test "should create plant_group_update" do
    assert_difference('PlantGroupUpdate.count') do
      post plant_group_updates_url, params: { plant_group_update: { current_room_id: @plant_group_update.current_room_id, notes: @plant_group_update.notes, plant_group_id: @plant_group_update.plant_group_id, quantity: @plant_group_update.quantity, transplant_destination_room_id: @plant_group_update.transplant_destination_room_id, transplant_origin_room_id: @plant_group_update.transplant_origin_room_id, update_type: @plant_group_update.update_type } }
    end

    assert_redirected_to plant_group_update_url(PlantGroupUpdate.last)
  end

  test "should show plant_group_update" do
    get plant_group_update_url(@plant_group_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_group_update_url(@plant_group_update)
    assert_response :success
  end

  test "should update plant_group_update" do
    patch plant_group_update_url(@plant_group_update), params: { plant_group_update: { current_room_id: @plant_group_update.current_room_id, notes: @plant_group_update.notes, plant_group_id: @plant_group_update.plant_group_id, quantity: @plant_group_update.quantity, transplant_destination_room_id: @plant_group_update.transplant_destination_room_id, transplant_origin_room_id: @plant_group_update.transplant_origin_room_id, update_type: @plant_group_update.update_type } }
    assert_redirected_to plant_group_update_url(@plant_group_update)
  end

  test "should destroy plant_group_update" do
    assert_difference('PlantGroupUpdate.count', -1) do
      delete plant_group_update_url(@plant_group_update)
    end

    assert_redirected_to plant_group_updates_url
  end
end
