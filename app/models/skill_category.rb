class SkillCategory < ApplicationRecord
  belongs_to :category
  has_many :skills
end
