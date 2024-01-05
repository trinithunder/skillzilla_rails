require "application_system_test_case"

class TermsOfServicesTest < ApplicationSystemTestCase
  setup do
    @terms_of_service = terms_of_services(:one)
  end

  test "visiting the index" do
    visit terms_of_services_url
    assert_selector "h1", text: "Terms of services"
  end

  test "should create terms of service" do
    visit terms_of_services_url
    click_on "New terms of service"

    fill_in "Message", with: @terms_of_service.message
    fill_in "Title", with: @terms_of_service.title
    click_on "Create Terms of service"

    assert_text "Terms of service was successfully created"
    click_on "Back"
  end

  test "should update Terms of service" do
    visit terms_of_service_url(@terms_of_service)
    click_on "Edit this terms of service", match: :first

    fill_in "Message", with: @terms_of_service.message
    fill_in "Title", with: @terms_of_service.title
    click_on "Update Terms of service"

    assert_text "Terms of service was successfully updated"
    click_on "Back"
  end

  test "should destroy Terms of service" do
    visit terms_of_service_url(@terms_of_service)
    click_on "Destroy this terms of service", match: :first

    assert_text "Terms of service was successfully destroyed"
  end
end
