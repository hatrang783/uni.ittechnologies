class Customer < ApplicationRecord
    validates :phone, presence: true, uniqueness: true
    validates :customername, presence: true

    validates :phone, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }
end
