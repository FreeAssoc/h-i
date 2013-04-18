class Walkthrough
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date
  field :statistics

  belongs_to:user
  embedded_in :hotel
  embeds_many :sites

end
