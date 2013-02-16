require 'test_helper'

class CommEventsControllerTest < ActionController::TestCase
  setup do
    @comm_event = comm_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comm_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comm_event" do
    assert_difference('CommEvent.count') do
      post :create, comm_event: {  }
    end

    assert_redirected_to comm_event_path(assigns(:comm_event))
  end

  test "should show comm_event" do
    get :show, id: @comm_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comm_event
    assert_response :success
  end

  test "should update comm_event" do
    put :update, id: @comm_event, comm_event: {  }
    assert_redirected_to comm_event_path(assigns(:comm_event))
  end

  test "should destroy comm_event" do
    assert_difference('CommEvent.count', -1) do
      delete :destroy, id: @comm_event
    end

    assert_redirected_to comm_events_path
  end
end
