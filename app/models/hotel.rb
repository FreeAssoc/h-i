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
  field :contact_name, type: String, localize: true
  field :location, :type => Array, default: [ 0.0, 0.0 ]
  field :description, type: String, localize: true
  field :general_manager
  field :contacts
  field :primary_image_url, type: String
  field :image_urls, :type => Array
  field :cancellation_policy, type: String
  field :booking_conditions, type: String

  embeds_many :walkthroughs
  embeds_many :rooms
  embeds_one :country

  slug :name

  index(
    { location: "2d" },
    { min: -200, max: 200}
   )

end
