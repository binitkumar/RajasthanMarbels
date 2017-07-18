require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { advance_amount: @order.advance_amount, customer_address: @order.customer_address, customer_contact_no: @order.customer_contact_no, customer_name: @order.customer_name, midiator_name: @order.midiator_name, model_no: @order.model_no, order_status: @order.order_status, order_type: @order.order_type, product: @order.product } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { advance_amount: @order.advance_amount, customer_address: @order.customer_address, customer_contact_no: @order.customer_contact_no, customer_name: @order.customer_name, midiator_name: @order.midiator_name, model_no: @order.model_no, order_status: @order.order_status, order_type: @order.order_type, product: @order.product } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
