class Question
  include ActiveModel::Model
  extend ActiveModel::Callbacks

  define_model_callbacks :save
  attr_accessor :id, :simple_key, :simple_value

  validates :simple_value, presence: true, length: {in:4..25}
  validates_inclusion_of :simple_key, :in => SIMPLE_KEY_CHOICES

  # def save
  #   if valid?
  #     run_callbacks(:save) { true }
  #   else
  #     false
  #   end
  # end
  #
  # def persisted?
  #   self.id == 1
  # end
end
