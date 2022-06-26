class Brand < ApplicationRecord
    has_many :products
    attr_accessor :product_id
end