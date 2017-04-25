# == Schema Information
#
# Table name: skills
#
#  id          :integer          not null, primary key
#  name        :string
#  category_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Skill < ApplicationRecord
  mount_uploader :logo, LogoUploader
  has_many :myskills
  has_many :users, through: :myskills
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
