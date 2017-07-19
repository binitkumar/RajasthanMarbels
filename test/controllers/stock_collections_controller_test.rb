require 'test_helper'

class StockCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_collection = stock_collections(:one)
  end

  test "should get index" do
    get stock_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_collection_url
    assert_response :success
  end

  test "should create stock_collection" do
    assert_difference('StockCollection.count') do
      post stock_collections_url, params: { stock_collection: { addition_type: @stock_collection.addition_type } }
    end

    assert_redirected_to stock_collection_url(StockCollection.last)
  end

  test "should show stock_collection" do
    get stock_collection_url(@stock_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_collection_url(@stock_collection)
    assert_response :success
  end

  test "should update stock_collection" do
    patch stock_collection_url(@stock_collection), params: { stock_collection: { addition_type: @stock_collection.addition_type } }
    assert_redirected_to stock_collection_url(@stock_collection)
  end

  test "should destroy stock_collection" do
    assert_difference('StockCollection.count', -1) do
      delete stock_collection_url(@stock_collection)
    end

    assert_redirected_to stock_collections_url
  end
end
