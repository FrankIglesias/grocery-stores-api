class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quanity
      t.string :photo
      t.belongs_to :grocery_store
      t.timestamps
    end
  end
end
