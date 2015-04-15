class AddStockBoxIdToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :stock_box_id, :integer
  end
end