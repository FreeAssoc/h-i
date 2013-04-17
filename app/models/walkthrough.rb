class Walkthrough
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date
  field :statistics

  belongs_to:user
  belongs_to :hotel
  embeds_many :sites

end
