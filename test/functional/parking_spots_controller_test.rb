require 'test_helper'

class ParkingSpotsControllerTest < ActionController::TestCase
  setup do
    @parking_spot = parking_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_spot" do
    assert_difference('ParkingSpot.count') do
      post :create, parking_spot: { mCompanyName: @parking_spot.mCompanyName, mDesc: @parking_spot.mDesc, mFree: @parking_spot.mFree, mLat: @parking_spot.mLat, mLocalID: @parking_spot.mLocalID, mLong: @parking_spot.mLong, mPhoneNumber: @parking_spot.mPhoneNumber, mPrice: @parking_spot.mPrice }
    end

    assert_redirected_to parking_spot_path(assigns(:parking_spot))
  end

  test "should show parking_spot" do
    get :show, id: @parking_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_spot
    assert_response :success
  end

  test "should update parking_spot" do
    put :update, id: @parking_spot, parking_spot: { mCompanyName: @parking_spot.mCompanyName, mDesc: @parking_spot.mDesc, mFree: @parking_spot.mFree, mLat: @parking_spot.mLat, mLocalID: @parking_spot.mLocalID, mLong: @parking_spot.mLong, mPhoneNumber: @parking_spot.mPhoneNumber, mPrice: @parking_spot.mPrice }
    assert_redirected_to parking_spot_path(assigns(:parking_spot))
  end

  test "should destroy parking_spot" do
    assert_difference('ParkingSpot.count', -1) do
      delete :destroy, id: @parking_spot
    end

    assert_redirected_to parking_spots_path
  end
end
