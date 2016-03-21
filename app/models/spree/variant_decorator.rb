Spree::Variant.class_eval do
  belongs_to :stock_box
  attr_accessible :stocked_by_id

  def stock_state
    if count_on_hand > 0 && available?
      "Estoque"
    elsif lost?
      "Perdido"
    elsif product.sold?
      "Vendido"
    else
      "Reservado"
  	end
  end

  def stocked_by
    Spree::User.find(self.stocked_by_id) if self.stocked_by_id
  end
end