class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  include RankedModel
  ranks :row_order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :color

  validates :name, presence: true, length:{maximum: 20}
  validates :image, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :category_id, presence: true
  validates :color_id, presence: true
end
