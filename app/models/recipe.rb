class Recipe < ApplicationRecord
  validates_presence_of :title, :body

  mount_uploader :main_image, BlogUploader
  mount_uploader :thumb_image, BlogUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.recent
    order(created_at: :desc)
  end

  def self.featured_recipes
     limit(3)
  end
end
