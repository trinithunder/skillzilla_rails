require "application_system_test_case"

class LifeStagesTest < ApplicationSystemTestCase
  setup do
    @life_stage = life_stages(:one)
  end

  test "visiting the index" do
    visit life_stages_url
    assert_selector "h1", text: "Life stages"
  end

  test "should create life stage" do
    visit life_stages_url
    click_on "New life stage"

    fill_in "Title", with: @life_stage.title
    click_on "Create Life stage"

    assert_text "Life stage was successfully created"
    click_on "Back"
  end

  test "should update Life stage" do
    visit life_stage_url(@life_stage)
    click_on "Edit this life stage", match: :first

    fill_in "Title", with: @life_stage.title
    click_on "Update Life stage"

    assert_text "Life stage was successfully updated"
    click_on "Back"
  end

  test "should destroy Life stage" do
    visit life_stage_url(@life_stage)
    click_on "Destroy this life stage", match: :first

    assert_text "Life stage was successfully destroyed"
  end
end
