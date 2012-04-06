class AddMetaTitleToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :meta_title, :string
  end
end
