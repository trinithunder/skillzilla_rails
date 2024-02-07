require "test_helper"

class SocialMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_medium = social_media(:one)
  end

  test "should get index" do
    get social_media_url
    assert_response :success
  end

  test "should get new" do
    get new_social_medium_url
    assert_response :success
  end

  test "should create social_medium" do
    assert_difference("SocialMedium.count") do
      post social_media_url, params: { social_medium: { title: @social_medium.title, url: @social_medium.url } }
    end

    assert_redirected_to social_medium_url(SocialMedium.last)
  end

  test "should show social_medium" do
    get social_medium_url(@social_medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_medium_url(@social_medium)
    assert_response :success
  end

  test "should update social_medium" do
    patch social_medium_url(@social_medium), params: { social_medium: { title: @social_medium.title, url: @social_medium.url } }
    assert_redirected_to social_medium_url(@social_medium)
  end

  test "should destroy social_medium" do
    assert_difference("SocialMedium.count", -1) do
      delete social_medium_url(@social_medium)
    end

    assert_redirected_to social_media_url
  end
end
