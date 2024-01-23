require "test_helper"

class AppLayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_layer = app_layers(:one)
  end

  test "should get index" do
    get app_layers_url
    assert_response :success
  end

  test "should get new" do
    get new_app_layer_url
    assert_response :success
  end

  test "should create app_layer" do
    assert_difference("AppLayer.count") do
      post app_layers_url, params: { app_layer: {  } }
    end

    assert_redirected_to app_layer_url(AppLayer.last)
  end

  test "should show app_layer" do
    get app_layer_url(@app_layer)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_layer_url(@app_layer)
    assert_response :success
  end

  test "should update app_layer" do
    patch app_layer_url(@app_layer), params: { app_layer: {  } }
    assert_redirected_to app_layer_url(@app_layer)
  end

  test "should destroy app_layer" do
    assert_difference("AppLayer.count", -1) do
      delete app_layer_url(@app_layer)
    end

    assert_redirected_to app_layers_url
  end
end
