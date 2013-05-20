require 'spec_helper'

describe V1::HotelsController do

  before(:each) do
    @hotels = create_hotels
    @env = http_login
  end

  #
  # pass the @env along with your request, eg:
  #
  # GET '/labels', {}, @env
  it "should Retrieve all Hotels" do
    get '/hotels', {}, @env

    assert_response 200
    response.header['Content-Type'].should include 'application/json'

    json_hotels = JSON.parse(response.body)
    json_hotels.count().should == 10
  end

  it "should Retrieve the Berns Hotel" do
    get '/hotels/berns-hotel', {}, @env
    assert_response 200
    response.header['Content-Type'].should include 'application/json'

    json_hotel = JSON.parse(response.body)
    json_hotel["name"].should == "Berns Hotel"
 end

  it "should Retrieve the Rooms for Berns Hotel" do
    get '/hotels/berns-hotel/rooms/', {}, @env
    assert_response 200
    response.header['Content-Type'].should include 'application/json'

    json_rooms = JSON.parse(response.body)
    json_rooms.count().should == 2
 end

  it "should Update Hotel via the API" do
    get '/hotels/berns-hotel', {}, @env
    assert_response 200
    response.header['Content-Type'].should include 'application/json'

    json_hotel = JSON.parse(response.body)
    json_hotel["name"].should == "Berns Hotel"

    # change some field(s) then persist back via POST
    json_hotel["booking_conditions"] = "Hotel cannot be booked at this time."
    params = { :hotel => json_hotel }
    post '/hotels', params, @env
  end

  it "can Create a new Hotel via API" do
    create_new_hotel
  end

  it "can Edit an existing Hotel via API" do
    get '/hotels/berns-hotel', {}, @env
    assert_response 200
    response.header['Content-Type'].should include 'application/json'

    json_hotel = JSON.parse(response.body)
    json_hotel["name"].should == "Berns Hotel"

    # Create a simple update-gram, change a field and update
    booking_conditions = "My Test Update - Berns Hotel is not bookable at present"
    json_hotel = { "name" => "Berns Hotel", "booking_conditions" => booking_conditions }
    params = { :hotel => json_hotel }
    request.env['HTTP_CONTENT_TYPE'] = 'application/json; charset=utf-8'
    put 'hotels/berns-hotel', params, @env
    assert_response 204

    # Now fetch the hotel again and verify that the booking_conditions field
    # has been updated.
    hotel = Hotel.where(name: "Berns Hotel").first
    puts hotel.name
    puts hotel.booking_conditions
    hotel.booking_conditions.should == booking_conditions

  end

  it "should Create Rooms to an exissting hotel via API" do

  end

  it "should Update Rooms for a Hotel via API" do

  end

  it "should Delete Rooms from a Hotel via API" do

  end

  it "should add contacts for a hotel via API" do

  end

  it "should edit contacts for a hotel via API" do

  end

  it "should edit contacts for a hotel via API" do

  end


end

def create_new_hotel
   json_new_hotel = JSON.parse(File.read("test/fixtures/new_hotel.json"))
   params = { :hotel => json_new_hotel }

   post "/hotels", params, @env
   assert_response 201

   # ensure the new hotel is in the DB
   assert Hotel.find_by(name: "Edgewater Hotel") != nil
end

def add_hotel_room(hotel_name)

end

def remove_hotel_room(hotel_name)

end

def add_contact_for_hotel(hotel_name)

end

def remove_contact_from_hotel(hotel_name)

end
