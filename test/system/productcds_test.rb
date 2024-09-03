require "application_system_test_case"

class ProductcdsTest < ApplicationSystemTestCase
  setup do
    @productcd = productcds(:one)
  end

  test "visiting the index" do
    visit productcds_url
    assert_selector "h1", text: "Productcds"
  end

  test "should create productcd" do
    visit productcds_url
    click_on "New productcd"

    click_on "Create Productcd"

    assert_text "Productcd was successfully created"
    click_on "Back"
  end

  test "should update Productcd" do
    visit productcd_url(@productcd)
    click_on "Edit this productcd", match: :first

    click_on "Update Productcd"

    assert_text "Productcd was successfully updated"
    click_on "Back"
  end

  test "should destroy Productcd" do
    visit productcd_url(@productcd)
    click_on "Destroy this productcd", match: :first

    assert_text "Productcd was successfully destroyed"
  end
end
