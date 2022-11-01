class Product < ApplicationRecord
	validates :name,:price,:photo,:photo_type, presence: true
	validates :name, length: { minimum: 3 }
	validates :price, numericality: { greater_than_or_equal_to: 0, only_float: true }
end
