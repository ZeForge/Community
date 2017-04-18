# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  body             :text
#  description      :text
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  banner_image_url :string
#

class Post < ApplicationRecord
  # load Preety urls
  extend FriendlyId
  friendly_id :title, use: :slugged
  # end load preety rurls

  # Validations
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
