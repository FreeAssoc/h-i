class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String
  field :email, type: String
  field :validated, type: Boolean, default: false
  field :validation_date, type: Date


  slug :email
end
