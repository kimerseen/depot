class LineItem < ActiveRecord::Base
  
  attr_accessible :cart_id, :product_id, :quantity
  #attr_accessible :product
  
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  def total_price
    product.price * quantity
  end
  
end
