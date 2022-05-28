require "test_helper"

class MediCinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medi_cine = medi_cines(:one)
  end

  test "should get index" do
    get medi_cines_url
    assert_response :success
  end

  test "should get new" do
    get new_medi_cine_url
    assert_response :success
  end

  test "should create medi_cine" do
    assert_difference("MediCine.count") do
      post medi_cines_url, params: { medi_cine: { description: @medi_cine.description, final_price: @medi_cine.final_price, final_stock: @medi_cine.final_stock, initial_price: @medi_cine.initial_price, initial_stock: @medi_cine.initial_stock, number_medicine_isbn: @medi_cine.number_medicine_isbn } }
    end

    assert_redirected_to medi_cine_url(MediCine.last)
  end

  test "should show medi_cine" do
    get medi_cine_url(@medi_cine)
    assert_response :success
  end

  test "should get edit" do
    get edit_medi_cine_url(@medi_cine)
    assert_response :success
  end

  test "should update medi_cine" do
    patch medi_cine_url(@medi_cine), params: { medi_cine: { description: @medi_cine.description, final_price: @medi_cine.final_price, final_stock: @medi_cine.final_stock, initial_price: @medi_cine.initial_price, initial_stock: @medi_cine.initial_stock, number_medicine_isbn: @medi_cine.number_medicine_isbn } }
    assert_redirected_to medi_cine_url(@medi_cine)
  end

  test "should destroy medi_cine" do
    assert_difference("MediCine.count", -1) do
      delete medi_cine_url(@medi_cine)
    end

    assert_redirected_to medi_cines_url
  end
end
