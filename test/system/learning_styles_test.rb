require "application_system_test_case"

class LearningStylesTest < ApplicationSystemTestCase
  setup do
    @learning_style = learning_styles(:one)
  end

  test "visiting the index" do
    visit learning_styles_url
    assert_selector "h1", text: "Learning styles"
  end

  test "should create learning style" do
    visit learning_styles_url
    click_on "New learning style"

    fill_in "Message", with: @learning_style.message
    fill_in "Title", with: @learning_style.title
    click_on "Create Learning style"

    assert_text "Learning style was successfully created"
    click_on "Back"
  end

  test "should update Learning style" do
    visit learning_style_url(@learning_style)
    click_on "Edit this learning style", match: :first

    fill_in "Message", with: @learning_style.message
    fill_in "Title", with: @learning_style.title
    click_on "Update Learning style"

    assert_text "Learning style was successfully updated"
    click_on "Back"
  end

  test "should destroy Learning style" do
    visit learning_style_url(@learning_style)
    click_on "Destroy this learning style", match: :first

    assert_text "Learning style was successfully destroyed"
  end
end
