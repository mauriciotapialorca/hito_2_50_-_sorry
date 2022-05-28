require "test_helper"

class VentaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get venta_index_url
    assert_response :success
  end

  test "should get create" do
    get venta_create_url
    assert_response :success
  end

  test "should get show" do
    get venta_show_url
    assert_response :success
  end

  test "should get edit" do
    get venta_edit_url
    assert_response :success
  end
end
