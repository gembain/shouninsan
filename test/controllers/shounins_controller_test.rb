require 'test_helper'

class ShouninsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shounin = shounins(:one)
  end

  test "should get index" do
    get shounins_url
    assert_response :success
  end

  test "should get new" do
    get new_shounin_url
    assert_response :success
  end

  test "should create shounin" do
    assert_difference('Shounin.count') do
      post shounins_url, params: { shounin: { approval: @shounin.approval, comment: @shounin.comment, description: @shounin.description, email: @shounin.email, url: @shounin.url } }
    end

    assert_redirected_to shounin_url(Shounin.last)
  end

  test "should show shounin" do
    get shounin_url(@shounin)
    assert_response :success
  end

  test "should get edit" do
    get edit_shounin_url(@shounin)
    assert_response :success
  end

  test "should update shounin" do
    patch shounin_url(@shounin), params: { shounin: { approval: @shounin.approval, comment: @shounin.comment, description: @shounin.description, email: @shounin.email, url: @shounin.url } }
    assert_redirected_to shounin_url(@shounin)
  end

  test "should destroy shounin" do
    assert_difference('Shounin.count', -1) do
      delete shounin_url(@shounin)
    end

    assert_redirected_to shounins_url
  end
end
