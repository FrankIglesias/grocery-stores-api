class GroceryStore < ApplicationRecord
  has_many :products, dependent: :destroy
end
