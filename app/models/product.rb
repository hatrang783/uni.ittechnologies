class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  has_one_attached :image

  def self.group_by_stock(stock_column)
    group(stock_column)
  end

end
