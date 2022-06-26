require "test_helper"

class BrandprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brandpro = brandpros(:one)
  end

  test "should get index" do
    get brandpros_url
    assert_response :success
  end

  test "should get new" do
    get new_brandpro_url
    assert_response :success
  end

  test "should create brandpro" do
    assert_difference("Brandpro.count") do
      post brandpros_url, params: { brandpro: { brand_id: @brandpro.brand_id, product_id: @brandpro.product_id } }
    end

    assert_redirected_to brandpro_url(Brandpro.last)
  end

  test "should show brandpro" do
    get brandpro_url(@brandpro)
    assert_response :success
  end

  test "should get edit" do
    get edit_brandpro_url(@brandpro)
    assert_response :success
  end

  test "should update brandpro" do
    patch brandpro_url(@brandpro), params: { brandpro: { brand_id: @brandpro.brand_id, product_id: @brandpro.product_id } }
    assert_redirected_to brandpro_url(@brandpro)
  end

  test "should destroy brandpro" do
    assert_difference("Brandpro.count", -1) do
      delete brandpro_url(@brandpro)
    end

    assert_redirected_to brandpros_url
  end
end
