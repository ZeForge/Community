class Section < ApplicationRecord
  belongs_to :course, inverse_of: :sections
  has_many :lessons, inverse_of: :section, dependent: :destroy

  validates :title, presence: true

end
