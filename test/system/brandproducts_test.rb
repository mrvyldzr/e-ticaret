require "application_system_test_case"

class BrandproductsTest < ApplicationSystemTestCase
  setup do
    @brandproduct = brandproducts(:one)
  end

  test "visiting the index" do
    visit brandproducts_url
    assert_selector "h1", text: "Brandproducts"
  end

  test "should create brandproduct" do
    visit brandproducts_url
    click_on "New brandproduct"

    fill_in "Name", with: @brandproduct.name
    click_on "Create Brandproduct"

    assert_text "Brandproduct was successfully created"
    click_on "Back"
  end

  test "should update Brandproduct" do
    visit brandproduct_url(@brandproduct)
    click_on "Edit this brandproduct", match: :first

    fill_in "Name", with: @brandproduct.name
    click_on "Update Brandproduct"

    assert_text "Brandproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Brandproduct" do
    visit brandproduct_url(@brandproduct)
    click_on "Destroy this brandproduct", match: :first

    assert_text "Brandproduct was successfully destroyed"
  end
end
