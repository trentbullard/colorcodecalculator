require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success, "response wasn't success"
  end

  test 'should route to home page' do
    assert_routing root_path, {controller: 'static_pages', action: 'home'}
  end

end
