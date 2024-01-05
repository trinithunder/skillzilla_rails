require "test_helper"

class LifeStagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @life_stage = life_stages(:one)
  end

  test "should get index" do
    get life_stages_url
    assert_response :success
  end

  test "should get new" do
    get new_life_stage_url
    assert_response :success
  end

  test "should create life_stage" do
    assert_difference("LifeStage.count") do
      post life_stages_url, params: { life_stage: { title: @life_stage.title } }
    end

    assert_redirected_to life_stage_url(LifeStage.last)
  end

  test "should show life_stage" do
    get life_stage_url(@life_stage)
    assert_response :success
  end

  test "should get edit" do
    get edit_life_stage_url(@life_stage)
    assert_response :success
  end

  test "should update life_stage" do
    patch life_stage_url(@life_stage), params: { life_stage: { title: @life_stage.title } }
    assert_redirected_to life_stage_url(@life_stage)
  end

  test "should destroy life_stage" do
    assert_difference("LifeStage.count", -1) do
      delete life_stage_url(@life_stage)
    end

    assert_redirected_to life_stages_url
  end
end
