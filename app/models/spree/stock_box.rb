module Spree
  class StockBox < ActiveRecord::Base
    attr_accessible :number, :positionX, :positionY, :positionZ, :quantity, :last_check_at
    before_validation :generate_box_number, on: :create
    has_many :variants

    def total_items
      if variants.size > 0
        variants.collect{ |v| v.count_on_hand }.reduce(:+)
      else
        0
      end
    end

    def generate_box_number
      alphabet = ('A'..'Z').to_a
      integer = 0
      leter = 0
      record = true
      while record
        number = "#{alphabet[leter]}#{integer}"
        record = self.class.where(number: number).first
        if integer > 9
          integer = 0
          letter += 1
        else
          integer += 1
        end 
      end
      self.number = number if self.number.blank?
      self.number
    end
  
  end
end