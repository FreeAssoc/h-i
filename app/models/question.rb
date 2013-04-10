class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :text, type: String
  field :help_text, type: String
  field :relative_value, type: Integer
  field :order, type: Integer

  has_one :question_type

  slug :text
end
