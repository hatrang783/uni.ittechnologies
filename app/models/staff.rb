class Staff < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password,  uniqueness: true
end
