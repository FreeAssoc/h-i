module Api
  class HotelsController < ApplicationController
    # GET /api/hotels
    # GET /api/hotels.json
    def index
      @hotels = Hotel.all

      render json: @hotels
    end

    # GET /api/hotels/1
    # GET /api/hotels/1.json
    def show
      @hotel = Hotel.find(params[:id])

      render json: @hotel
    end

    # POST /api/hotels
    # POST /api/hotels.json
    def create
      @hotel = Hotel.new(params[:hotel])

      if @hotel.save
        render json: @hotel, status: :created, location: @hotel
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /api/hotels/1
    # PATCH/PUT /api/hotels/1.json
    def update
      @hotel = Hotel.find(params[:id])

      if @hotel.update_attributes(params[:hotel])
        head :no_content
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/hotels/1
    # DELETE /api/hotels/1.json
    def destroy
      @hotel = Hotel.find(params[:id])
      @hotel.destroy

      head :no_content
    end
  end
end
