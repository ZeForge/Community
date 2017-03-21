class Lesson < ApplicationRecord
  belongs_to :section, inverse_of: :lessons

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :video, presence: true
  
end
