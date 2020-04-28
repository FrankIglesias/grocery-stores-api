ActiveAdmin.register Product do
  permit_params :name, :quantity, :photo, :grocery_store_id
end
