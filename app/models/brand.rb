class Brand < ApplicationRecord
    has_and_belongs_to_many :products
    attr_accessor :product_id
end