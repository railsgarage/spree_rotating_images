class AddLinkToSpreeRotatingImages < ActiveRecord::Migration
  def change
    add_column :spree_rotating_images, :link, :string
  end
end
