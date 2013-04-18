class Room
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String, localize: true
  field :description, type: String, localize: true
  field :image_urls, :type => Array
  field :rates

  embedded_in :hotel

end
