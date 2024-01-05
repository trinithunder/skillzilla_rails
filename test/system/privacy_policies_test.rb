require "application_system_test_case"

class PrivacyPoliciesTest < ApplicationSystemTestCase
  setup do
    @privacy_policy = privacy_policies(:one)
  end

  test "visiting the index" do
    visit privacy_policies_url
    assert_selector "h1", text: "Privacy policies"
  end

  test "should create privacy policy" do
    visit privacy_policies_url
    click_on "New privacy policy"

    fill_in "Message", with: @privacy_policy.message
    fill_in "Title", with: @privacy_policy.title
    click_on "Create Privacy policy"

    assert_text "Privacy policy was successfully created"
    click_on "Back"
  end

  test "should update Privacy policy" do
    visit privacy_policy_url(@privacy_policy)
    click_on "Edit this privacy policy", match: :first

    fill_in "Message", with: @privacy_policy.message
    fill_in "Title", with: @privacy_policy.title
    click_on "Update Privacy policy"

    assert_text "Privacy policy was successfully updated"
    click_on "Back"
  end

  test "should destroy Privacy policy" do
    visit privacy_policy_url(@privacy_policy)
    click_on "Destroy this privacy policy", match: :first

    assert_text "Privacy policy was successfully destroyed"
  end
end
