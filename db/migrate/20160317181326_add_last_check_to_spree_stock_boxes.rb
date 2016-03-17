class AddLastCheckToSpreeStockBoxes < ActiveRecord::Migration
  def change
  	add_column :spree_stock_boxes, :last_check_at, :date
  end
end
