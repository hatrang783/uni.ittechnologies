class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  has_one_attached :image

  def self.group_by_stock(stock_column)
    group(stock_column)
  end

end
