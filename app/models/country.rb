class Country
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true
  field :iso_code, type: String

  has_many :hotels
  belongs_to :region

  slug :name
end
