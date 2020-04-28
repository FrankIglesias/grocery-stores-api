class Product < ApplicationRecord
  belongs_to :grocery_store
  validates :name, :quantity, presence: true
end
