require 'test_helper'

class AvailabilityControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get availability_new_url
    assert_response :success
  end

  test "should get index" do
    get availability_index_url
    assert_response :success
  end

end
