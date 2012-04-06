Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                   :name => "product_meta_title",
                   :insert_bottom => '[data-hook="admin_product_form_meta"]',
                   :partial => "spree/admin/products/meta_title",
                   :disabled => false)
