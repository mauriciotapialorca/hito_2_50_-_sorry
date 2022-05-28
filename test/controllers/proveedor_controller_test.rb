require "test_helper"

class ProveedorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proveedor_index_url
    assert_response :success
  end

  test "should get create" do
    get proveedor_create_url
    assert_response :success
  end

  test "should get show" do
    get proveedor_show_url
    assert_response :success
  end

  test "should get edit" do
    get proveedor_edit_url
    assert_response :success
  end
end
