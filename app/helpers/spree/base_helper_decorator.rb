Spree::BaseHelper.module_eval do
  def meta_data_tags
        object = instance_variable_get('@'+controller_name.singularize)
        meta = { :keywords => Spree::Config[:default_meta_keywords], :description => Spree::Config[:default_meta_description] }

        if object.kind_of?(ActiveRecord::Base)
          meta[:keywords] = object.meta_keywords if object[:meta_keywords].present?
          meta[:description] = object.meta_description if object[:meta_description].present?
          meta[:title] = object.meta_title if object[:meta_title].present?
        end

        meta.map do |name, content|
          tag('meta', :name => name, :content => content)
        end.join("\n")
      end
end