class ParkingSpot < ActiveRecord::Base
  attr_accessible :mCompanyName, :mDesc, :mFree, :mLat, :mLocalID, :mLong, :mPhoneNumber, :mPrice
end
