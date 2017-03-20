class Skill < ApplicationRecord
  has_many :myskills
  has_many :users, through: :myskills
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
