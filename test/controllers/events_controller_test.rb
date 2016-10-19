require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { description: @event.description, from_datetime: @event.from_datetime, ticker_price: @event.ticker_price, ticket_url: @event.ticket_url, title: @event.title, to_datetime: @event.to_datetime, venue_lat: @event.venue_lat, venue_long: @event.venue_long, venue_title: @event.venue_title }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { description: @event.description, from_datetime: @event.from_datetime, ticker_price: @event.ticker_price, ticket_url: @event.ticket_url, title: @event.title, to_datetime: @event.to_datetime, venue_lat: @event.venue_lat, venue_long: @event.venue_long, venue_title: @event.venue_title }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
