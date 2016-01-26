Spree::Variant.class_eval do
  belongs_to :stock_box
  attr_accessible :stocked_by_id

  def stocked_by
    Spree::User.find(self.stocked_by_id) if self.stocked_by_id
  end
end