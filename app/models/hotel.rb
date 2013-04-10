class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :address1, type: String, localize: true
  field :address2, type: String, localize: true
  field :address3, type: String, localize: true
  field :city, type: String, localize: true
  field :postal_code, type: String, localize: true
  field :email, type: String
  field :homepage, type: String
  field :phone, type: String
  field :fax, type: String
  field :contact, type: String, localize: true
  field :image_url, type: String
  field :location, :type => Array
  field :additional_notes, type: String, localize: true
  field :general_manager, type: ContactInfo
  field :dir_sales_marketing, type: ContactInfo
  field :reservation_contact, type: ContactInfo
  field :concierge_contact, type: ContactInfo


  has_one :region
  has_one :country

  slug :name

  index(
    { location: "2d" },
    { min: -200, max: 200}
   )

end
