require "test_helper"

class StripeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stripe_index_url
    assert_response :success
  end
end
