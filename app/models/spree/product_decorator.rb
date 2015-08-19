Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_box_id if Spree::Variant.table_exists? && Spree::Variant.column_names.include?('stock_box_id')
  before_save :insert_into_stock_box
  attr_accessible :stock_box_number
  attr_accessor :stock_box_number
  
  def stock_box_number
    master.stock_box.number if master.stock_box
  end
  
  private
  
  def insert_into_stock_box
    stock_box = Spree::StockBox.find_by_number(@stock_box_number) if @stock_box_number
    self.stock_box_id = stock_box.id if stock_box
  end
  
end