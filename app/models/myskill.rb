# == Schema Information
#
# Table name: myskills
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  skill_id   :integer
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Myskill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :user_id, presence: true
  validates :skill_id, presence: true
  validates_uniqueness_of :skill_id, scope: :user_id
end
