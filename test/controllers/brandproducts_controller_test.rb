require "test_helper"

class BrandproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brandproduct = brandproducts(:one)
  end

  test "should get index" do
    get brandproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_brandproduct_url
    assert_response :success
  end

  test "should create brandproduct" do
    assert_difference("Brandproduct.count") do
      post brandproducts_url, params: { brandproduct: { name: @brandproduct.name } }
    end

    assert_redirected_to brandproduct_url(Brandproduct.last)
  end

  test "should show brandproduct" do
    get brandproduct_url(@brandproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_brandproduct_url(@brandproduct)
    assert_response :success
  end

  test "should update brandproduct" do
    patch brandproduct_url(@brandproduct), params: { brandproduct: { name: @brandproduct.name } }
    assert_redirected_to brandproduct_url(@brandproduct)
  end

  test "should destroy brandproduct" do
    assert_difference("Brandproduct.count", -1) do
      delete brandproduct_url(@brandproduct)
    end

    assert_redirected_to brandproducts_url
  end
end
