require 'test_helper'

class VegitablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vegitable = vegitables(:one)
  end

  test "should get index" do
    get vegitables_url
    assert_response :success
  end

  test "should get new" do
    get new_vegitable_url
    assert_response :success
  end

  test "should create vegitable" do
    assert_difference('Vegitable.count') do
      post vegitables_url, params: { vegitable: { category_id: @vegitable.category_id, current_price: @vegitable.current_price, description: @vegitable.description, image: @vegitable.image, name: @vegitable.name, price: @vegitable.price, quantity: @vegitable.quantity } }
    end

    assert_redirected_to vegitable_url(Vegitable.last)
  end

  test "should show vegitable" do
    get vegitable_url(@vegitable)
    assert_response :success
  end

  test "should get edit" do
    get edit_vegitable_url(@vegitable)
    assert_response :success
  end

  test "should update vegitable" do
    patch vegitable_url(@vegitable), params: { vegitable: { category_id: @vegitable.category_id, current_price: @vegitable.current_price, description: @vegitable.description, image: @vegitable.image, name: @vegitable.name, price: @vegitable.price, quantity: @vegitable.quantity } }
    assert_redirected_to vegitable_url(@vegitable)
  end

  test "should destroy vegitable" do
    assert_difference('Vegitable.count', -1) do
      delete vegitable_url(@vegitable)
    end

    assert_redirected_to vegitables_url
  end
end
