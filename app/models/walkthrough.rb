class Walkthrough
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :region, type: String
  field :date, type: Date
  field :user, type: String

  has_one :hotel
  has_one :user
end
