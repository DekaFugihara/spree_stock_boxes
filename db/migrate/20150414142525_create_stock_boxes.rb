class CreateStockBoxes < ActiveRecord::Migration
  def change
    create_table :spree_stock_boxes do |t|
      t.string :number
      t.float :positionX
      t.float :positionY
      t.float :positionZ
      t.integer :quantity

      t.timestamps
    end
  end
end
