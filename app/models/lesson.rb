# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  title      :string
#  subtitle   :string
#  video      :string
#  section_id :integer
#  sort_order :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ApplicationRecord
  belongs_to :section, inverse_of: :lessons

  include RankedModel
  ranks :sort_order, with_same: :section_id

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :video, presence: true

end
