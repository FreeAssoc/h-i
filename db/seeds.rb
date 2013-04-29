# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Walkthrough.destroy_all
Hotel.destroy_all
Country.destroy_all
Region.destroy_all

Region.create( { name: "Africa" } )
Region.create( { name: "Asia" } )
Region.create( { name: "Central America" } )
Region.create( { name: "Europe" } )
Region.create( { name: "Middle East" } )
Region.create( { name: "North America" } )
Region.create( { name: "Oceania" } )
Region.create( { name: "South America" } )
Region.create( { name: "The Caribbean" } )

# European countries
region = Region.where( name: "Europe" ).first
Country.create( { name: "Sweden", iso_code: "SE", currency: "SEK", region: region })
Country.create( { name: "France", iso_code: "FR", currency: "EUR", region: region })

# North American countries
region = Region.where( name: "North America" ).first
Country.create( { name: "United States", iso_code: "US", currency: "USD", region: region })

# Asian countries
region = Region.where( name: "Asia" ).first
# I realize Hong Kong is not a country but per Paul I'm making it one as it has its own currency HKD
Country.create( { name: "Hong Kong", iso_code: "CN", currency: "HKD", region: region })

# Middle Eastern countries
region = Region.where( name: "Middle East" ).first
Country.create( { name: "United Arab Emirates", iso_code: "CN", currency: "AED", region: region })


# European hotels
# hotel Berns Hotel
hotel = Hotel.new
hotel.name = "Berns Hotel"
hotel.address1 = "Näckströmsgatan 8"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.postal_code = "111 47"
hotel.primary_email = "frontoffice@berns.se"
hotel.homepage = "http://www.berns.se/"
hotel.primary_phone = "+46 (0)8 566 322 50"
hotel.fax = "08-112"
hotel.location = [ 59.33249, 18.07341 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/berns_hotel_exterior_stockholm_sweden.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [ { :name => "Hans-Göran Göransson-Hansson", :email => "goran@berns.se" },   
                   { :title => "General Manager", :name => "Göran", :email => "goran@berns.se", :phone1 => "123456789", :phone2 => "123456789" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "DELUXE KING ADA"
room.description = "Standard king. King bed. 250 sqft. Floor to ceiling windows with stunning views"
room.rates = { "Visa Premium Card Rate" => 417, "Flexible rate" => 475, "Flexible rate + breakfast" => 510 }
rooms << room
room = Room.new
room.name = "DELUXE KING"
room.description = "Standard king. King bed. 250 sqft."
room.rates = { "Visa Premium Card Rate" => 400, "Flexible rate" => 450, "Flexible rate + breakfast" => 475 }
rooms << room
hotel.rooms = rooms
hotel.save

# hotel Grand du Cap Ferrat
hotel = Hotel.new
hotel.name = "GRAND HOTEL DU CAP FERRAT"
hotel.address1 = "71 Boulevard du Général de Gaulle"
hotel.city = "Saint-Jean-Cap-Ferrat"
hotel.country_iso_code = "FR"
hotel.region_name = "Europe"
hotel.postal_code = "06230"
hotel.homepage = "http://www.grand-hotel-cap-ferrat.com/uk/index.php"
hotel.location = [ 43.6778978, 7.3319548 ]
hotel.primary_image_url = "http://www.grand-hotel-cap-ferrat.com/maj/images_resized/2488-so-2012galeriephotos-photohotel1-fr2.jpg"
hotel.country = Country.where(name: "France").first
hotel.contacts = [
                   { :title => "General Manager", :name => "Henri Poincaire", :email => "henri@grandhotelferrat.co.fr", :phone1 => "123456789", :phone2 => "123456789" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Suite Deluxe"
room.description = "Standard king. King bed. 30 m. Marble statuary with view of Mediterranean"
room.rates = { "Visa Premium Card Rate" => 384, "Standard rate" => 410, "Standard en-suite" => 440 }
rooms << room
room = Room.new
room.name = "Suite Anniversaire"
room.description = "Standard king. King bed. 20 m. Fountain, faces courtyard. "
room.rates = { "Visa Premium Card Rate" => 500, "Summer weekend rate" => 750, "Group rate" => 475 }
rooms << room
hotel.rooms = rooms
hotel.save

# Grand Hotel Stockholm
hotel = Hotel.new
hotel.name = "Grand Hotel Stockholm"
hotel.address1 = "Södra Blasieholmshamnen 8"
hotel.city = "Stockholm"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.homepage = "http://www.grandhotel.se/en"
hotel.location = [ 59.32954700000001, 18.0753843 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/Grand_hotel_Stockholm_2008-07-17.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [
                   { :title => "General Manager", :name => "Marcus Zetterquist", :email => "marcus@grandhotel.se", :phone1 => "123456789", :phone2 => "123456789" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Grand Hyatt Hotel Dubai
hotel = Hotel.new
hotel.name = "Grand Hyatt Hotel Dubai"
hotel.address1 = "Sheikh Rashid Rd "
hotel.city = "Dubai"
hotel.country_iso_code = "UAE"
hotel.region_name = "Middle East"
hotel.primary_email = "dubai.grand@hyatt.com"
hotel.primary_phone = "+971 4 317 1234"
hotel.homepage = "http://www.dubai.grand.hyatt.com/"
hotel.location = [ 25.2472188, 55.3372125 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/grand-hyatt-dubai_ph_alb_270120114138.jpg"
hotel.country = Country.where(name: "United Arab Emirates").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Hilton Stockholm
hotel = Hotel.new
hotel.name = "Hilton Stockholm"
hotel.address1 = "Guldgränd 8"
hotel.city = "Stockholm"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.location = [ 59.3204506, 18.0692649 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/Hilton_Stockholm_Slussen_530.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Hotel Diplomat
hotel = Hotel.new
hotel.name = "Hotel Diplomat"
hotel.address1 = "Strandvägen 7C"
hotel.city = "Stockholm"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.location = [ 59.3319047,18.0806326 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/hotel-diplomat-stockholm-2.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Lydmar
hotel = Hotel.new
hotel.name = "Lydmar"
hotel.address1 = "Södra Blasieholmshamnen 2"
hotel.city = "Stockholm"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.location = [ 59.3284865, 18.0780943 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/Lydmar-000441-1.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]

rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# MGM Grand Hotel & Casino
hotel = Hotel.new
hotel.name = "MGM Grand Hotel & Casino"
hotel.address1 = "3799 South Las Vegas Boulevard"
hotel.city = "Las Vegas"
hotel.state_province = "NV"
hotel.country_iso_code = "US"
hotel.region_name = "North America"
hotel.homepage = "http://www.mgmgrand.com"
hotel.primary_phone = "877-880-0880"
hotel.location = [ 36.1030179, -115.1676888 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/Mgm-Grand-Las-Vegas.jpg"
hotel.country = Country.where(name: "United States").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Nobis Hotel
hotel = Hotel.new
hotel.name = "Nobis Hotel"
hotel.address1 = "Norrmalmstorg 2-4"
hotel.city = "Stockholm"
hotel.country_iso_code = "SE"
hotel.region_name = "Europe"
hotel.location = [ 59.3331622, 18.0738095 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/Nobis-Hotel-Stockholm.jpg"
hotel.country = Country.where(name: "Sweden").first
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room
hotel.rooms = rooms
hotel.save

# Upper House
hotel = Hotel.new
hotel.name = "Upper House"
hotel.address1 = "Pacific Place"
hotel.address2 = "88 Queensway"
hotel.city = "Hong Kong"
hotel.country_iso_code = "CN"
hotel.region_name = "Asia"
hotel.location = [ 22.277722, 114.16481 ]
hotel.primary_image_url = "http://hotelinsider.secure.exhost.se/uploads/hotel/the-upper-house-hong-kong-1.jpg"
hotel.country = Country.where(name: "Hong Kong").first

# contacts for this hotel
hotel.contacts = [
                   { :title => "General Manager" },
                   { :title => "Director of Sales and Marketing" },
                   { :title => "Reservation" },
                   { :title => "Concierge" }
                 ]

# rooms for this hotel
rooms = []
room = Room.new
room.name = "Superior Double Room"
room.description = "25 sqm with desk and seating area"
room.rates = { "Visa Premium Card Rate" => 250, "Standard rate" => 150, "Summer weekend" => 340 }
rooms << room
room = Room.new
room.name = "Single Room"
room.description = "15 sqm with a work desk"
room.rates = { "Visa Premium Card Rate" => 100, "Summer weekend rate" => 200, "Group rate" => 75 }
rooms << room

hotel.rooms = rooms

hotel.save

