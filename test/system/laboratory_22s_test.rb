require "application_system_test_case"

class Laboratory22sTest < ApplicationSystemTestCase
  setup do
    @laboratory_22 = laboratory_22s(:one)
  end

  test "visiting the index" do
    visit laboratory_22s_url
    assert_selector "h1", text: "Laboratory 22s"
  end

  test "should create laboratory 22" do
    visit laboratory_22s_url
    click_on "New laboratory 22"

    fill_in "Address", with: @laboratory_22.address
    fill_in "Description", with: @laboratory_22.description
    fill_in "Distric", with: @laboratory_22.distric
    fill_in "Hour close", with: @laboratory_22.hour_close
    fill_in "Hour open", with: @laboratory_22.hour_open
    fill_in "Number laboratory", with: @laboratory_22.number_laboratory
    fill_in "Number medicine isbn", with: @laboratory_22.number_medicine_isbn
    fill_in "Pharmacy of brand", with: @laboratory_22.pharmacy_of_brand
    fill_in "Phone", with: @laboratory_22.phone
    fill_in "Region", with: @laboratory_22.region
    click_on "Create Laboratory 22"

    assert_text "Laboratory 22 was successfully created"
    click_on "Back"
  end

  test "should update Laboratory 22" do
    visit laboratory_22_url(@laboratory_22)
    click_on "Edit this laboratory 22", match: :first

    fill_in "Address", with: @laboratory_22.address
    fill_in "Description", with: @laboratory_22.description
    fill_in "Distric", with: @laboratory_22.distric
    fill_in "Hour close", with: @laboratory_22.hour_close
    fill_in "Hour open", with: @laboratory_22.hour_open
    fill_in "Number laboratory", with: @laboratory_22.number_laboratory
    fill_in "Number medicine isbn", with: @laboratory_22.number_medicine_isbn
    fill_in "Pharmacy of brand", with: @laboratory_22.pharmacy_of_brand
    fill_in "Phone", with: @laboratory_22.phone
    fill_in "Region", with: @laboratory_22.region
    click_on "Update Laboratory 22"

    assert_text "Laboratory 22 was successfully updated"
    click_on "Back"
  end

  test "should destroy Laboratory 22" do
    visit laboratory_22_url(@laboratory_22)
    click_on "Destroy this laboratory 22", match: :first

    assert_text "Laboratory 22 was successfully destroyed"
  end
end
