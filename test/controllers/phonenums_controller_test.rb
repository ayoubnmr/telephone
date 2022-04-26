require "test_helper"

class PhonenumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phonenums_index_url
    assert_response :success
  end
end
