class Myskill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :user_id, presence: true
end
