class StockTransaction < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :transaction_type, presence: true#, inclusion: { in: %w[addition removal] }
  validates :quantity, numericality: { greater_than: 0 }
end
