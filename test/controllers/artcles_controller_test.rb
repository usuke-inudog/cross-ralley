require 'test_helper'

class ArtclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artcles_index_url
    assert_response :success
  end

end
