class Course < ApplicationRecord
  belongs_to :user, inverse_of: :courses
  has_many :sections, inverse_of: :course, dependent: :destroy
  has_many :enrollments, inverse_of: :course
  has_many :enrolled_users, through: :enrollments, source: :user


  validates :title, presence: true
  validates :description, presence: :true
  validates :cost, presence: :true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 99999.99}
end
