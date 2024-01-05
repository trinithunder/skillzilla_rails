require "application_system_test_case"

class DaysStreaksTest < ApplicationSystemTestCase
  setup do
    @days_streak = days_streaks(:one)
  end

  test "visiting the index" do
    visit days_streaks_url
    assert_selector "h1", text: "Days streaks"
  end

  test "should create days streak" do
    visit days_streaks_url
    click_on "New days streak"

    fill_in "Count", with: @days_streak.count
    click_on "Create Days streak"

    assert_text "Days streak was successfully created"
    click_on "Back"
  end

  test "should update Days streak" do
    visit days_streak_url(@days_streak)
    click_on "Edit this days streak", match: :first

    fill_in "Count", with: @days_streak.count
    click_on "Update Days streak"

    assert_text "Days streak was successfully updated"
    click_on "Back"
  end

  test "should destroy Days streak" do
    visit days_streak_url(@days_streak)
    click_on "Destroy this days streak", match: :first

    assert_text "Days streak was successfully destroyed"
  end
end
