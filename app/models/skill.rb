class Skill < ApplicationRecord
  belongs_to :skillcategory
  belongs_to :user
end
