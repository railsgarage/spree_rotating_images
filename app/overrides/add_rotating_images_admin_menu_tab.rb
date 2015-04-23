Deface::Override.new({
  :virtual_path => "spree/layouts/admin",
  :name => "rotating_images_admin_tabs",
  :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
  :text => "
    <ul class='nav nav-sidebar'>
      <%= tab(:rotating_images, :label => 'Rotating Images', :url => spree.admin_rotating_images_path, :icon => 'picture') %>
    </ul>
  ",
  :disabled => false
})
