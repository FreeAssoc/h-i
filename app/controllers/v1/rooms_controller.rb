class V1::RoomsController < V1::BaseController

  before_filter :get_hotel_rooms
    
  def index
     render :json => @rooms.to_json
  end

  def show
     @room = @rooms.find(params[:id])
     render :json => @room.to_json
  end

  def create
    @room = Room.new(params[:room])

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    @hotel = Hotel.find(params[:hotel_id)
    @room = @hotel.rooms.find(params[:id])

    if @room.update_attributes(params[:room])
      head :no_content
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room = Hotel.find(params[:id])
    @room.destroy

    head :no_content
  end

  protected

  def get_hotel_rooms
     @hotel= Hotel.find(params[:hotel_id]) if params[:hotel_id]

     if !@hotel
       redirect_to root_path
     end
     
     if !@hotel.rooms
       @rooms = []
     else
       @rooms = @hotel.rooms
     end
  end

end
