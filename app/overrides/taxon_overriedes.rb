Deface::Override.new(:virtual_path => "spree/admin/taxons/_form",
                     :name => "taxon_meta_tags",
                     :insert_bottom => "[data-hook=admin_inside_taxon_form]",
                     :partial => "spree/admin/shared/meta_tags",
                     :disabled => false)
