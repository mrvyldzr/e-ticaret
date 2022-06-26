require "application_system_test_case"

class BrandprosTest < ApplicationSystemTestCase
  setup do
    @brandpro = brandpros(:one)
  end

  test "visiting the index" do
    visit brandpros_url
    assert_selector "h1", text: "Brandpros"
  end

  test "should create brandpro" do
    visit brandpros_url
    click_on "New brandpro"

    fill_in "Brand", with: @brandpro.brand_id
    fill_in "Product", with: @brandpro.product_id
    click_on "Create Brandpro"

    assert_text "Brandpro was successfully created"
    click_on "Back"
  end

  test "should update Brandpro" do
    visit brandpro_url(@brandpro)
    click_on "Edit this brandpro", match: :first

    fill_in "Brand", with: @brandpro.brand_id
    fill_in "Product", with: @brandpro.product_id
    click_on "Update Brandpro"

    assert_text "Brandpro was successfully updated"
    click_on "Back"
  end

  test "should destroy Brandpro" do
    visit brandpro_url(@brandpro)
    click_on "Destroy this brandpro", match: :first

    assert_text "Brandpro was successfully destroyed"
  end
end
