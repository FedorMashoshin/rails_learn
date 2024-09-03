require "test_helper"

class ProductcdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productcd = productcds(:one)
  end

  test "should get index" do
    get productcds_url
    assert_response :success
  end

  test "should get new" do
    get new_productcd_url
    assert_response :success
  end

  test "should create productcd" do
    assert_difference("Productcd.count") do
      post productcds_url, params: { productcd: {} }
    end

    assert_redirected_to productcd_url(Productcd.last)
  end

  test "should show productcd" do
    get productcd_url(@productcd)
    assert_response :success
  end

  test "should get edit" do
    get edit_productcd_url(@productcd)
    assert_response :success
  end

  test "should update productcd" do
    patch productcd_url(@productcd), params: { productcd: {} }
    assert_redirected_to productcd_url(@productcd)
  end

  test "should destroy productcd" do
    assert_difference("Productcd.count", -1) do
      delete productcd_url(@productcd)
    end

    assert_redirected_to productcds_url
  end
end
