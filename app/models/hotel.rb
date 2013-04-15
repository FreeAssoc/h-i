class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :address1, type: String, localize: true
  field :address2, type: String, localize: true
  field :address3, type: String, localize: true
  field :city, type: String, localize: true
  field :state_province, type: String, localize: true
  field :postal_code, type: String, localize: true
  field :email, type: String
  field :homepage, type: String
  field :phone, type: String
  field :fax, type: String
  field :contact, type: String, localize: true
  field :image_url, type: String
  field :location, :type => Array, default: [ 0.0, 0.0 ]
  field :additional_notes, type: String, localize: true
  field :general_manager
  field :dir_sales_marketing
  field :reservation_contact
  field :concierge_contact

  belongs_to :country

  slug :name

  index(
    { location: "2d" },
    { min: -200, max: 200}
   )

end
