require "test_helper"

class ThemeColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_color = theme_colors(:one)
  end

  test "should get index" do
    get theme_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_color_url
    assert_response :success
  end

  test "should create theme_color" do
    assert_difference("ThemeColor.count") do
      post theme_colors_url, params: { theme_color: { hexCode: @theme_color.hexCode, title: @theme_color.title } }
    end

    assert_redirected_to theme_color_url(ThemeColor.last)
  end

  test "should show theme_color" do
    get theme_color_url(@theme_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_color_url(@theme_color)
    assert_response :success
  end

  test "should update theme_color" do
    patch theme_color_url(@theme_color), params: { theme_color: { hexCode: @theme_color.hexCode, title: @theme_color.title } }
    assert_redirected_to theme_color_url(@theme_color)
  end

  test "should destroy theme_color" do
    assert_difference("ThemeColor.count", -1) do
      delete theme_color_url(@theme_color)
    end

    assert_redirected_to theme_colors_url
  end
end
