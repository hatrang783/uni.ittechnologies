class Category < ApplicationRecord
    validates :categoryname, presence: true, uniqueness: true
end
