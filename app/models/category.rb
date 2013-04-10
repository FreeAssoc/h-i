class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String

  has_many :questions

  slug :name
end
