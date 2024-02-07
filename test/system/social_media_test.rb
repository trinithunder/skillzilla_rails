require "application_system_test_case"

class SocialMediaTest < ApplicationSystemTestCase
  setup do
    @social_medium = social_media(:one)
  end

  test "visiting the index" do
    visit social_media_url
    assert_selector "h1", text: "Social media"
  end

  test "should create social medium" do
    visit social_media_url
    click_on "New social medium"

    fill_in "Title", with: @social_medium.title
    fill_in "Url", with: @social_medium.url
    click_on "Create Social medium"

    assert_text "Social medium was successfully created"
    click_on "Back"
  end

  test "should update Social medium" do
    visit social_medium_url(@social_medium)
    click_on "Edit this social medium", match: :first

    fill_in "Title", with: @social_medium.title
    fill_in "Url", with: @social_medium.url
    click_on "Update Social medium"

    assert_text "Social medium was successfully updated"
    click_on "Back"
  end

  test "should destroy Social medium" do
    visit social_medium_url(@social_medium)
    click_on "Destroy this social medium", match: :first

    assert_text "Social medium was successfully destroyed"
  end
end
