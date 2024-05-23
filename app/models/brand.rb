class Brand < ApplicationRecord
    validates :brandname, presence: true, uniqueness: true
end
