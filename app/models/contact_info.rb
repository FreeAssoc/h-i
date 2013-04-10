class ContactInfo
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone1, type: String
  field :phone2, type: String
end
