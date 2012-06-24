class CreateParkingSpots < ActiveRecord::Migration
  def change
    create_table :parking_spots do |t|
      t.float :mLat
      t.float :mLong
      t.string :mCompanyName
      t.integer :mLocalID
      t.float :mPrice
      t.string :mPhoneNumber
      t.string :mDesc
      t.boolean :mFree

      t.timestamps
    end
  end
end
