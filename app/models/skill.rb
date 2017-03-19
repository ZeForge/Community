class Skill < ApplicationRecord
  has_many :myskills
  has_many :users, through: :myskills
  belongs_to :skillcategory, class_name: 'SkillCategory', foreign_key: 'skillcategory_id'
end
