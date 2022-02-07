class User < ApplicationRecord
    has_secure_password
    has_many :pizzas
    has_many :carts

    validates :email, presence: true, uniqueness: true
end
