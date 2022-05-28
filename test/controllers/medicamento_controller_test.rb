require "test_helper"

class MedicamentoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicamento_index_url
    assert_response :success
  end

  test "should get create" do
    get medicamento_create_url
    assert_response :success
  end

  test "should get show" do
    get medicamento_show_url
    assert_response :success
  end

  test "should get edit" do
    get medicamento_edit_url
    assert_response :success
  end
end
