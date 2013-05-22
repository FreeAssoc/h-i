class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String
  field :email, type: String
  field :validated, type: Boolean, default: false
  field :validation_date, type: Date
  field :notify_when_site_is_live, type: Boolean, default: false
  field :newsletter_subscriber, type: Boolean, default: false
 
  slug :email
end
