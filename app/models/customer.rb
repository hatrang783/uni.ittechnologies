class Customer < ApplicationRecord
    validates :phone, presence: true, uniqueness: true
    validates :customername, presence: true
end
