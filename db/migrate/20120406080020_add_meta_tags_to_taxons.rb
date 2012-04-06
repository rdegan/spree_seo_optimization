class AddMetaTagsToTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :meta_title, :string
    add_column :spree_taxons, :meta_keywords, :string
    add_column :spree_taxons, :meta_description, :text
  end
end
