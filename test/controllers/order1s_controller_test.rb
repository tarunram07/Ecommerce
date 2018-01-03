require 'test_helper'

class Order1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order1 = order1s(:one)
  end

  test "should get index" do
    get order1s_url
    assert_response :success
  end

  test "should get new" do
    get new_order1_url
    assert_response :success
  end

  test "should create order1" do
    assert_difference('Order1.count') do
      post order1s_url, params: { order1: { date_of_delivery: @order1.date_of_delivery, est_date_of_delivery: @order1.est_date_of_delivery, order_description: @order1.order_description, product_id: @order1.product_id } }
    end

    assert_redirected_to order1_url(Order1.last)
  end

  test "should show order1" do
    get order1_url(@order1)
    assert_response :success
  end

  test "should get edit" do
    get edit_order1_url(@order1)
    assert_response :success
  end

  test "should update order1" do
    patch order1_url(@order1), params: { order1: { date_of_delivery: @order1.date_of_delivery, est_date_of_delivery: @order1.est_date_of_delivery, order_description: @order1.order_description, product_id: @order1.product_id } }
    assert_redirected_to order1_url(@order1)
  end

  test "should destroy order1" do
    assert_difference('Order1.count', -1) do
      delete order1_url(@order1)
    end

    assert_redirected_to order1s_url
  end
end
