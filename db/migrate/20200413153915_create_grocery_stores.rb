class CreateGroceryStores < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_stores do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
