require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  test "should get skills" do
    get :skills
    assert_response :success
  end

  test "should get feats" do
    get :feats
    assert_response :success
  end

end
