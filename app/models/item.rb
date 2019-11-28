class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :color

  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :color_id, presence: true
end
