require 'test_helper'

class VersionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get versions_new_url
    assert_response :success
  end

  test "should get create" do
    get versions_create_url
    assert_response :success
  end

end
