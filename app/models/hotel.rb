class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String
  slug :name

  field :location, :type => Array

  index(
    { location: "2d" },
    { min: -200, max: 200}
   )

end
