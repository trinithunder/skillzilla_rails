require "application_system_test_case"

class AppLayersTest < ApplicationSystemTestCase
  setup do
    @app_layer = app_layers(:one)
  end

  test "visiting the index" do
    visit app_layers_url
    assert_selector "h1", text: "App layers"
  end

  test "should create app layer" do
    visit app_layers_url
    click_on "New app layer"

    click_on "Create App layer"

    assert_text "App layer was successfully created"
    click_on "Back"
  end

  test "should update App layer" do
    visit app_layer_url(@app_layer)
    click_on "Edit this app layer", match: :first

    click_on "Update App layer"

    assert_text "App layer was successfully updated"
    click_on "Back"
  end

  test "should destroy App layer" do
    visit app_layer_url(@app_layer)
    click_on "Destroy this app layer", match: :first

    assert_text "App layer was successfully destroyed"
  end
end
