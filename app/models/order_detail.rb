class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validate :quantity_cannot_exceed_stock
  validates :quantity, numericality: { greater_than: 0 }
  after_create :decrement_product_stock

  private

  def decrement_product_stock
    product.decrement!(:stock, quantity)
  end

  def quantity_cannot_exceed_stock
    if quantity.present? && quantity > product.stock
      errors.add(:quantity, "cannot exceed the product's stock")
    end
  end
end
