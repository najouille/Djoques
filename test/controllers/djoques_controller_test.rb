require "test_helper"

class DjoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @djoque = djoques(:one)
  end

  test "should get index" do
    get djoques_url
    assert_response :success
  end

  test "should get new" do
    get new_djoque_url
    assert_response :success
  end

  test "should create djoque" do
    assert_difference('Djoque.count') do
      post djoques_url, params: { djoque: { date: @djoque.date, djoke: @djoque.djoke, like: @djoque.like } }
    end

    assert_redirected_to djoque_url(Djoque.last)
  end

  test "should show djoque" do
    get djoque_url(@djoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_djoque_url(@djoque)
    assert_response :success
  end

  test "should update djoque" do
    patch djoque_url(@djoque), params: { djoque: { date: @djoque.date, djoke: @djoque.djoke, like: @djoque.like } }
    assert_redirected_to djoque_url(@djoque)
  end

  test "should destroy djoque" do
    assert_difference('Djoque.count', -1) do
      delete djoque_url(@djoque)
    end

    assert_redirected_to djoques_url
  end
end
