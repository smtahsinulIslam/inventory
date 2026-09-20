class CreateStockTransactions < ActiveRecord::Migration[8.1]
  def change
    create_table :stock_transactions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :transaction_type
      t.integer :quantity
      t.decimal :unit_price

      t.timestamps
    end
  end
end
