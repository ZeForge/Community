class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 5}
  validates :user_id, presence: true
  
  belongs_to :user

  scope :most_recent, -> { order(id: :desc)}

  def display_day_published
    "Objavljeno dana #{created_at.strftime('%-d %-b, %Y')}"
  end

  def should_generate_new_friendly_id?
    title_changed?
  end
end
