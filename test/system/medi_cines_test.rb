require "application_system_test_case"

class MediCinesTest < ApplicationSystemTestCase
  setup do
    @medi_cine = medi_cines(:one)
  end

  test "visiting the index" do
    visit medi_cines_url
    assert_selector "h1", text: "Medi cines"
  end

  test "should create medi cine" do
    visit medi_cines_url
    click_on "New medi cine"

    fill_in "Description", with: @medi_cine.description
    fill_in "Final price", with: @medi_cine.final_price
    fill_in "Final stock", with: @medi_cine.final_stock
    fill_in "Initial price", with: @medi_cine.initial_price
    fill_in "Initial stock", with: @medi_cine.initial_stock
    fill_in "Number medicine isbn", with: @medi_cine.number_medicine_isbn
    click_on "Create Medi cine"

    assert_text "Medi cine was successfully created"
    click_on "Back"
  end

  test "should update Medi cine" do
    visit medi_cine_url(@medi_cine)
    click_on "Edit this medi cine", match: :first

    fill_in "Description", with: @medi_cine.description
    fill_in "Final price", with: @medi_cine.final_price
    fill_in "Final stock", with: @medi_cine.final_stock
    fill_in "Initial price", with: @medi_cine.initial_price
    fill_in "Initial stock", with: @medi_cine.initial_stock
    fill_in "Number medicine isbn", with: @medi_cine.number_medicine_isbn
    click_on "Update Medi cine"

    assert_text "Medi cine was successfully updated"
    click_on "Back"
  end

  test "should destroy Medi cine" do
    visit medi_cine_url(@medi_cine)
    click_on "Destroy this medi cine", match: :first

    assert_text "Medi cine was successfully destroyed"
  end
end
