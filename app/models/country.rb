class Country
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :iso_code, type: String
  field :currency, type: String, localize: true

  belongs_to :region
  has_many :hotels

  slug :name
end
