# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string
#  uid                    :string
#  name                   :string
#  avatar_url             :string
#  fb_id                  :string
#  oauth_token            :string
#  oauth_provider         :string
#  oauth_expires_at       :datetime
#  position               :string
#  superadmin_role        :boolean          default("f")
#  supervisor_role        :boolean          default("f")
#  user_role              :boolean          default("t")
#  role                   :integer
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  :recoverable
  devise :database_authenticatable, :registerable,
  :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  enum role: [:student, :instructor, :member]

  has_many :myskills
  has_many :skills, through: :myskills
  has_many :posts, dependent: :destroy

  has_many :courses, inverse_of: :user, dependent: :destroy
  has_many :enrollments, inverse_of: :user
  has_many :enrolled_courses, through: :enrollments, source: :course


  def enrolled_in?(course)
    enrolled_courses.include?(course)
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.avatar_url = auth.info.image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_draft_for(user)
    post = self.new(user_id: user.id)
    post.save_as_draft
    post
  end
end
