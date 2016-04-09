require 'test_helper'

class MotocyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motocycle = motocycles(:one)
  end

  test "should get index" do
    get motocycles_url
    assert_response :success
  end

  test "should get new" do
    get new_motocycle_url
    assert_response :success
  end

  test "should create motocycle" do
    assert_difference('Motocycle.count') do
      post motocycles_url, params: { motocycle: { Brand: @motocycle.Brand, Capacity: @motocycle.Capacity, Horsepower: @motocycle.Horsepower, Model: @motocycle.Model, Year: @motocycle.Year } }
    end

    assert_redirected_to motocycle_path(Motocycle.last)
  end

  test "should show motocycle" do
    get motocycle_url(@motocycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_motocycle_url(@motocycle)
    assert_response :success
  end

  test "should update motocycle" do
    patch motocycle_url(@motocycle), params: { motocycle: { Brand: @motocycle.Brand, Capacity: @motocycle.Capacity, Horsepower: @motocycle.Horsepower, Model: @motocycle.Model, Year: @motocycle.Year } }
    assert_redirected_to motocycle_path(@motocycle)
  end

  test "should destroy motocycle" do
    assert_difference('Motocycle.count', -1) do
      delete motocycle_url(@motocycle)
    end

    assert_redirected_to motocycles_path
  end
end
