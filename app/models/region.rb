# based on UN Country Grouping http://goo.gl/kB7Bt
class Region
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true

  has_many :countries

  slug :name
end
