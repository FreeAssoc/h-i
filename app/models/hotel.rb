class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :address1, :type => String, localize: true
  field :address2, :type => String, localize: true
  field :address3, :type => String, localize: true
  field :address4, :type => String, localize: true
  field :city, type: String, localize: true
  field :state_province, type: String, localize: true
  field :country_iso_code, type: String
  field :region_name, type: String
  field :postal_code, type: String, localize: true
  field :primary_email, type: String
  field :homepage, type: String
  field :primary_phone, type: String
  field :primary_fax, type: String
  field :location, :type => Array, default: [ 0.0, 0.0 ]
  field :description, type: String, localize: true
  field :contacts
  field :primary_image_url, type: String
  field :image_urls, :type => Array
  field :cancellation_policy, type: String
  field :booking_conditions, type: String

  has_many :walkthrough
  embeds_many :rooms
  belongs_to :country

  slug :name

  index(
    { location: "2d" },
    { min: -200, max: 200}
   )

end
