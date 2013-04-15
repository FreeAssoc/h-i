class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String
  field :email, type: String

  has_many :walkthroughs

  slug :name
end
