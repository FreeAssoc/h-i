class QuestionType
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :value, type: String
  field :data_storage_type, type: String
  field :notes, type: String

  belongs_to :question

  slug :value
end
