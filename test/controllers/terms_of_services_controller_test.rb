require "test_helper"

class TermsOfServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terms_of_service = terms_of_services(:one)
  end

  test "should get index" do
    get terms_of_services_url
    assert_response :success
  end

  test "should get new" do
    get new_terms_of_service_url
    assert_response :success
  end

  test "should create terms_of_service" do
    assert_difference("TermsOfService.count") do
      post terms_of_services_url, params: { terms_of_service: { message: @terms_of_service.message, title: @terms_of_service.title } }
    end

    assert_redirected_to terms_of_service_url(TermsOfService.last)
  end

  test "should show terms_of_service" do
    get terms_of_service_url(@terms_of_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_terms_of_service_url(@terms_of_service)
    assert_response :success
  end

  test "should update terms_of_service" do
    patch terms_of_service_url(@terms_of_service), params: { terms_of_service: { message: @terms_of_service.message, title: @terms_of_service.title } }
    assert_redirected_to terms_of_service_url(@terms_of_service)
  end

  test "should destroy terms_of_service" do
    assert_difference("TermsOfService.count", -1) do
      delete terms_of_service_url(@terms_of_service)
    end

    assert_redirected_to terms_of_services_url
  end
end
