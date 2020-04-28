class AddLocationToGroceryStores < ActiveRecord::Migration[6.0]
  def change
    add_column :grocery_stores, :lat, :string
    add_column :grocery_stores, :lng, :string
  end
end
