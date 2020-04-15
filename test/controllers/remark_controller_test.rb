require 'test_helper'

class RemarkControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get remark_create_url
    assert_response :success
  end

end
