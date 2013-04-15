class Site
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String

  has_many :questions
  belongs_to :walkthrough

  slug :name
end
