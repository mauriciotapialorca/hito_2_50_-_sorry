require "test_helper"

class UsuBuscaFarmBarriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usu_busca_farm_barrio = usu_busca_farm_barrios(:one)
  end

  test "should get index" do
    get usu_busca_farm_barrios_url
    assert_response :success
  end

  test "should get new" do
    get new_usu_busca_farm_barrio_url
    assert_response :success
  end

  test "should create usu_busca_farm_barrio" do
    assert_difference("UsuBuscaFarmBarrio.count") do
      post usu_busca_farm_barrios_url, params: { usu_busca_farm_barrio: { login: @usu_busca_farm_barrio.login, number_medicine: @usu_busca_farm_barrio.number_medicine, password: @usu_busca_farm_barrio.password } }
    end

    assert_redirected_to usu_busca_farm_barrio_url(UsuBuscaFarmBarrio.last)
  end

  test "should show usu_busca_farm_barrio" do
    get usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
    assert_response :success
  end

  test "should get edit" do
    get edit_usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
    assert_response :success
  end

  test "should update usu_busca_farm_barrio" do
    patch usu_busca_farm_barrio_url(@usu_busca_farm_barrio), params: { usu_busca_farm_barrio: { login: @usu_busca_farm_barrio.login, number_medicine: @usu_busca_farm_barrio.number_medicine, password: @usu_busca_farm_barrio.password } }
    assert_redirected_to usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
  end

  test "should destroy usu_busca_farm_barrio" do
    assert_difference("UsuBuscaFarmBarrio.count", -1) do
      delete usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
    end

    assert_redirected_to usu_busca_farm_barrios_url
  end
end
