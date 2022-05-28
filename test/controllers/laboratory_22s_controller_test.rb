require "test_helper"

class Laboratory22sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboratory_22 = laboratory_22s(:one)
  end

  test "should get index" do
    get laboratory_22s_url
    assert_response :success
  end

  test "should get new" do
    get new_laboratory_22_url
    assert_response :success
  end

  test "should create laboratory_22" do
    assert_difference("Laboratory22.count") do
      post laboratory_22s_url, params: { laboratory_22: { address: @laboratory_22.address, description: @laboratory_22.description, distric: @laboratory_22.distric, hour_close: @laboratory_22.hour_close, hour_open: @laboratory_22.hour_open, number_laboratory: @laboratory_22.number_laboratory, number_medicine_isbn: @laboratory_22.number_medicine_isbn, pharmacy_of_brand: @laboratory_22.pharmacy_of_brand, phone: @laboratory_22.phone, region: @laboratory_22.region } }
    end

    assert_redirected_to laboratory_22_url(Laboratory22.last)
  end

  test "should show laboratory_22" do
    get laboratory_22_url(@laboratory_22)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboratory_22_url(@laboratory_22)
    assert_response :success
  end

  test "should update laboratory_22" do
    patch laboratory_22_url(@laboratory_22), params: { laboratory_22: { address: @laboratory_22.address, description: @laboratory_22.description, distric: @laboratory_22.distric, hour_close: @laboratory_22.hour_close, hour_open: @laboratory_22.hour_open, number_laboratory: @laboratory_22.number_laboratory, number_medicine_isbn: @laboratory_22.number_medicine_isbn, pharmacy_of_brand: @laboratory_22.pharmacy_of_brand, phone: @laboratory_22.phone, region: @laboratory_22.region } }
    assert_redirected_to laboratory_22_url(@laboratory_22)
  end

  test "should destroy laboratory_22" do
    assert_difference("Laboratory22.count", -1) do
      delete laboratory_22_url(@laboratory_22)
    end

    assert_redirected_to laboratory_22s_url
  end
end
