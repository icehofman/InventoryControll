class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
    add_index :stocks, :product_id
  end
end
