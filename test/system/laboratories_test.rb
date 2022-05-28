require "application_system_test_case"

class LaboratoriesTest < ApplicationSystemTestCase
  setup do
    @laboratory = laboratories(:one)
  end

  test "visiting the index" do
    visit laboratories_url
    assert_selector "h1", text: "Laboratories"
  end

  test "should create laboratory" do
    visit laboratories_url
    click_on "New laboratory"

    fill_in "Description", with: @laboratory.description
    fill_in "Number laboratory", with: @laboratory.number_laboratory
    click_on "Create Laboratory"

    assert_text "Laboratory was successfully created"
    click_on "Back"
  end

  test "should update Laboratory" do
    visit laboratory_url(@laboratory)
    click_on "Edit this laboratory", match: :first

    fill_in "Description", with: @laboratory.description
    fill_in "Number laboratory", with: @laboratory.number_laboratory
    click_on "Update Laboratory"

    assert_text "Laboratory was successfully updated"
    click_on "Back"
  end

  test "should destroy Laboratory" do
    visit laboratory_url(@laboratory)
    click_on "Destroy this laboratory", match: :first

    assert_text "Laboratory was successfully destroyed"
  end
end
