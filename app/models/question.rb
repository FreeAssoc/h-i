class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :text, type: String
  field :help_text, type: String
  field :relative_value, type: Integer
  field :order, type: Integer
  field :answer, type: String
  field :additional_answer, type: String

  belongs_to :site
  belongs_to :category

  slug :text
end
