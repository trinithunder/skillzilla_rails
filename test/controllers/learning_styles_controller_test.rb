require "test_helper"

class LearningStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_style = learning_styles(:one)
  end

  test "should get index" do
    get learning_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_style_url
    assert_response :success
  end

  test "should create learning_style" do
    assert_difference("LearningStyle.count") do
      post learning_styles_url, params: { learning_style: { message: @learning_style.message, title: @learning_style.title } }
    end

    assert_redirected_to learning_style_url(LearningStyle.last)
  end

  test "should show learning_style" do
    get learning_style_url(@learning_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_style_url(@learning_style)
    assert_response :success
  end

  test "should update learning_style" do
    patch learning_style_url(@learning_style), params: { learning_style: { message: @learning_style.message, title: @learning_style.title } }
    assert_redirected_to learning_style_url(@learning_style)
  end

  test "should destroy learning_style" do
    assert_difference("LearningStyle.count", -1) do
      delete learning_style_url(@learning_style)
    end

    assert_redirected_to learning_styles_url
  end
end
