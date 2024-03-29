require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { activity: @restaurant.activity, age: @restaurant.age, budget: @restaurant.budget, description: @restaurant.description, info_url: @restaurant.info_url, name: @restaurant.name, rating: @restaurant.rating, size: @restaurant.size, tag: @restaurant.tag, time: @restaurant.time, tourist: @restaurant.tourist }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    put :update, id: @restaurant, restaurant: { activity: @restaurant.activity, age: @restaurant.age, budget: @restaurant.budget, description: @restaurant.description, info_url: @restaurant.info_url, name: @restaurant.name, rating: @restaurant.rating, size: @restaurant.size, tag: @restaurant.tag, time: @restaurant.time, tourist: @restaurant.tourist }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
