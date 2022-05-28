require "application_system_test_case"

class UsuBuscaFarmBarriosTest < ApplicationSystemTestCase
  setup do
    @usu_busca_farm_barrio = usu_busca_farm_barrios(:one)
  end

  test "visiting the index" do
    visit usu_busca_farm_barrios_url
    assert_selector "h1", text: "Usu busca farm barrios"
  end

  test "should create usu busca farm barrio" do
    visit usu_busca_farm_barrios_url
    click_on "New usu busca farm barrio"

    fill_in "Login", with: @usu_busca_farm_barrio.login
    fill_in "Number medicine", with: @usu_busca_farm_barrio.number_medicine
    fill_in "Password", with: @usu_busca_farm_barrio.password
    click_on "Create Usu busca farm barrio"

    assert_text "Usu busca farm barrio was successfully created"
    click_on "Back"
  end

  test "should update Usu busca farm barrio" do
    visit usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
    click_on "Edit this usu busca farm barrio", match: :first

    fill_in "Login", with: @usu_busca_farm_barrio.login
    fill_in "Number medicine", with: @usu_busca_farm_barrio.number_medicine
    fill_in "Password", with: @usu_busca_farm_barrio.password
    click_on "Update Usu busca farm barrio"

    assert_text "Usu busca farm barrio was successfully updated"
    click_on "Back"
  end

  test "should destroy Usu busca farm barrio" do
    visit usu_busca_farm_barrio_url(@usu_busca_farm_barrio)
    click_on "Destroy this usu busca farm barrio", match: :first

    assert_text "Usu busca farm barrio was successfully destroyed"
  end
end
