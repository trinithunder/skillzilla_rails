require "application_system_test_case"

class OnboardingsTest < ApplicationSystemTestCase
  setup do
    @onboarding = onboardings(:one)
  end

  test "visiting the index" do
    visit onboardings_url
    assert_selector "h1", text: "Onboardings"
  end

  test "should create onboarding" do
    visit onboardings_url
    click_on "New onboarding"

    fill_in "Body", with: @onboarding.body
    fill_in "Title", with: @onboarding.title
    click_on "Create Onboarding"

    assert_text "Onboarding was successfully created"
    click_on "Back"
  end

  test "should update Onboarding" do
    visit onboarding_url(@onboarding)
    click_on "Edit this onboarding", match: :first

    fill_in "Body", with: @onboarding.body
    fill_in "Title", with: @onboarding.title
    click_on "Update Onboarding"

    assert_text "Onboarding was successfully updated"
    click_on "Back"
  end

  test "should destroy Onboarding" do
    visit onboarding_url(@onboarding)
    click_on "Destroy this onboarding", match: :first

    assert_text "Onboarding was successfully destroyed"
  end
end
