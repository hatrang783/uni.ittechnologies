class Order < ApplicationRecord
  has_many :order_details
  belongs_to :customer
  belongs_to :staff
  accepts_nested_attributes_for :order_details


  def total_bill
    order_details.sum { |od| od.product.price * od.quantity }
  end
end 