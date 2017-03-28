class Section < ApplicationRecord
  belongs_to :course, inverse_of: :sections
  has_many :lessons, inverse_of: :section, dependent: :destroy

  include RankedModel
  ranks :sort_order, with_same: :course_id 

  validates :title, presence: true

end
