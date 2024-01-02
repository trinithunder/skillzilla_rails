require "test_helper"

class TopicCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic_comment = topic_comments(:one)
  end

  test "should get index" do
    get topic_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_comment_url
    assert_response :success
  end

  test "should create topic_comment" do
    assert_difference("TopicComment.count") do
      post topic_comments_url, params: { topic_comment: { body: @topic_comment.body, topic_id: @topic_comment.topic_id } }
    end

    assert_redirected_to topic_comment_url(TopicComment.last)
  end

  test "should show topic_comment" do
    get topic_comment_url(@topic_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_comment_url(@topic_comment)
    assert_response :success
  end

  test "should update topic_comment" do
    patch topic_comment_url(@topic_comment), params: { topic_comment: { body: @topic_comment.body, topic_id: @topic_comment.topic_id } }
    assert_redirected_to topic_comment_url(@topic_comment)
  end

  test "should destroy topic_comment" do
    assert_difference("TopicComment.count", -1) do
      delete topic_comment_url(@topic_comment)
    end

    assert_redirected_to topic_comments_url
  end
end
