class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  has_many :stock_transactions, dependent: :destroy

  validates :name, presence: true
  validates :sku, presence: true, uniqueness: true
  validates :purchase_price, numericality: { greater_than_or_equal_to: 0 }
  validates :selling_price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :minimum_stock, numericality: { greater_than_or_equal_to: 0 }
end
