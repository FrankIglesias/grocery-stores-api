class RenameColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :quanity, :quantity
  end
end
