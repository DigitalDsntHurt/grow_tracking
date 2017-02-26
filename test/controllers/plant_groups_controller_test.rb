require 'test_helper'

class PlantGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_group = plant_groups(:one)
  end

  test "should get index" do
    get plant_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_group_url
    assert_response :success
  end

  test "should create plant_group" do
    assert_difference('PlantGroup.count') do
      post plant_groups_url, params: { plant_group: { clone_date: @plant_group.clone_date, notes: @plant_group.notes, quantity: @plant_group.quantity } }
    end

    assert_redirected_to plant_group_url(PlantGroup.last)
  end

  test "should show plant_group" do
    get plant_group_url(@plant_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_group_url(@plant_group)
    assert_response :success
  end

  test "should update plant_group" do
    patch plant_group_url(@plant_group), params: { plant_group: { clone_date: @plant_group.clone_date, notes: @plant_group.notes, quantity: @plant_group.quantity } }
    assert_redirected_to plant_group_url(@plant_group)
  end

  test "should destroy plant_group" do
    assert_difference('PlantGroup.count', -1) do
      delete plant_group_url(@plant_group)
    end

    assert_redirected_to plant_groups_url
  end
end
