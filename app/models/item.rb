class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :send_method
  belongs_to_active_hash :destination
  belongs_to_active_hash :delivery_period

  belongs_to :user
  has_one_attached :image
  has_one :order

  validates :name, :description, :category, :condition, :send_method, :destination, :delivery_period, presence: true

  validates :category_id, :condition_id, :send_method_id, :destination_id, :delivery_period_id, numericality: { other_than: 1 } 

end
