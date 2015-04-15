# coding: utf-8

Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                      :name => "add_stock_boxes_settings",
                      :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                      :text => "<%= configurations_sidebar_menu_item('Configurações do estoque', admin_stock_boxes_url) %>")
                      
Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'insert_product_box',
                     :insert_before => 'ul#shipping_specs',
                     :text => '<li id="shipping_specs_dimensions_field" class="field alpha four columns">
                               <%= f.label :stock_box, "Caixa do estoque" %>
                               <%= f.text_field :stock_box_id, :size => 8 %></li>')