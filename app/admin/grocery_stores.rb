ActiveAdmin.register GroceryStore do
  permit_params :name, :photo, :lat, :lng

  show do
    attributes_table do
      row :name
      row :photo
      row :lat
      row :lng
      row :email
      table_for grocery_store.products do
        column 'Products' do |product|
          link_to product.name, admin_product_path(product)
        end
        column :quantity
      end
    end
  end

  index do
    column :id
    column :name
    column :email
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :photo
      f.input :lat
      f.input :lng
      f.latlng default_lat: -34.603683, default_lng: -58.381557
    end
    f.actions
  end

  filter :id_equals
  filter :name
  filter :email
end
