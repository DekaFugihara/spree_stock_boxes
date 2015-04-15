Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_box_id if Spree::Variant.table_exists? && Spree::Variant.column_names.include?('stock_box_id')
  attr_accessible :stock_box_id
end