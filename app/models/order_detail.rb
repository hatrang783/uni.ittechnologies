class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  
  validates :quantity, numericality: { greater_than: 0 }
  
  after_create :decrement_product_stock

  private

  def decrement_product_stock
    product.decrement!(:stock, quantity)
  end
end
