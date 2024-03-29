class ParkingSpotsController < ApplicationController
  # GET /parking_spots
  # GET /parking_spots.json
  def index
    @parking_spots = ParkingSpot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parking_spots }
    end
  end

  # GET /parking_spots/1
  # GET /parking_spots/1.json
  def show
    @parking_spot = ParkingSpot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parking_spot }
    end
  end

  # GET /parking_spots/new
  # GET /parking_spots/new.json
  def new
    @parking_spot = ParkingSpot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parking_spot }
    end
  end

  # GET /parking_spots/1/edit
  def edit
    @parking_spot = ParkingSpot.find(params[:id])
  end

  # POST /parking_spots
  # POST /parking_spots.json
  def create
    @parking_spot = ParkingSpot.new(params[:parking_spot])

    respond_to do |format|
      if @parking_spot.save
        format.html { redirect_to @parking_spot, notice: 'Parking spot was successfully created.' }
        format.json { render json: @parking_spot, status: :created, location: @parking_spot }
      else
        format.html { render action: "new" }
        format.json { render json: @parking_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parking_spots/1
  # PUT /parking_spots/1.json
  def update
    @parking_spot = ParkingSpot.find(params[:id])

    respond_to do |format|
      if @parking_spot.update_attributes(params[:parking_spot])
        format.html { redirect_to @parking_spot, notice: 'Parking spot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parking_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_spots/1
  # DELETE /parking_spots/1.json
  def destroy
    @parking_spot = ParkingSpot.find(params[:id])
    @parking_spot.destroy

    respond_to do |format|
      format.html { redirect_to parking_spots_url }
      format.json { head :no_content }
    end
  end
end
