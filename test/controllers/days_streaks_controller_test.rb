require "test_helper"

class DaysStreaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @days_streak = days_streaks(:one)
  end

  test "should get index" do
    get days_streaks_url
    assert_response :success
  end

  test "should get new" do
    get new_days_streak_url
    assert_response :success
  end

  test "should create days_streak" do
    assert_difference("DaysStreak.count") do
      post days_streaks_url, params: { days_streak: { count: @days_streak.count } }
    end

    assert_redirected_to days_streak_url(DaysStreak.last)
  end

  test "should show days_streak" do
    get days_streak_url(@days_streak)
    assert_response :success
  end

  test "should get edit" do
    get edit_days_streak_url(@days_streak)
    assert_response :success
  end

  test "should update days_streak" do
    patch days_streak_url(@days_streak), params: { days_streak: { count: @days_streak.count } }
    assert_redirected_to days_streak_url(@days_streak)
  end

  test "should destroy days_streak" do
    assert_difference("DaysStreak.count", -1) do
      delete days_streak_url(@days_streak)
    end

    assert_redirected_to days_streaks_url
  end
end
