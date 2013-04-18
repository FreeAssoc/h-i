class Country
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :iso_code, type: String
  field :currency, type: String, localize: true

  has_one :region
  embedded_in :hotel

  slug :name
end
