require "application_system_test_case"

class TopicCommentsTest < ApplicationSystemTestCase
  setup do
    @topic_comment = topic_comments(:one)
  end

  test "visiting the index" do
    visit topic_comments_url
    assert_selector "h1", text: "Topic comments"
  end

  test "should create topic comment" do
    visit topic_comments_url
    click_on "New topic comment"

    fill_in "Body", with: @topic_comment.body
    fill_in "Topic", with: @topic_comment.topic_id
    click_on "Create Topic comment"

    assert_text "Topic comment was successfully created"
    click_on "Back"
  end

  test "should update Topic comment" do
    visit topic_comment_url(@topic_comment)
    click_on "Edit this topic comment", match: :first

    fill_in "Body", with: @topic_comment.body
    fill_in "Topic", with: @topic_comment.topic_id
    click_on "Update Topic comment"

    assert_text "Topic comment was successfully updated"
    click_on "Back"
  end

  test "should destroy Topic comment" do
    visit topic_comment_url(@topic_comment)
    click_on "Destroy this topic comment", match: :first

    assert_text "Topic comment was successfully destroyed"
  end
end
