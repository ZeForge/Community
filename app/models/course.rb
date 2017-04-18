# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  cost        :decimal(, )
#  user_id     :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ApplicationRecord
  belongs_to :user, inverse_of: :courses
  has_many :sections, inverse_of: :course, dependent: :destroy
  has_many :enrollments, inverse_of: :course
  has_many :enrolled_users, through: :enrollments, source: :user

  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :description, presence: :true
  validates :cost, presence: :true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 99999.99}
end
