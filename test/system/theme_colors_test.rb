require "application_system_test_case"

class ThemeColorsTest < ApplicationSystemTestCase
  setup do
    @theme_color = theme_colors(:one)
  end

  test "visiting the index" do
    visit theme_colors_url
    assert_selector "h1", text: "Theme colors"
  end

  test "should create theme color" do
    visit theme_colors_url
    click_on "New theme color"

    fill_in "Hexcode", with: @theme_color.hexCode
    fill_in "Title", with: @theme_color.title
    click_on "Create Theme color"

    assert_text "Theme color was successfully created"
    click_on "Back"
  end

  test "should update Theme color" do
    visit theme_color_url(@theme_color)
    click_on "Edit this theme color", match: :first

    fill_in "Hexcode", with: @theme_color.hexCode
    fill_in "Title", with: @theme_color.title
    click_on "Update Theme color"

    assert_text "Theme color was successfully updated"
    click_on "Back"
  end

  test "should destroy Theme color" do
    visit theme_color_url(@theme_color)
    click_on "Destroy this theme color", match: :first

    assert_text "Theme color was successfully destroyed"
  end
end
