# based on UN Country Grouping http://goo.gl/kB7Bt
class GeographicalRegion
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String, localize: true

  has_many :countries, class_name: "Country"

  slug :name
end
