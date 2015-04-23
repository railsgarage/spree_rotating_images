class AddAttachmentImageToSpreeRotatingImages < ActiveRecord::Migration
  def self.up
    change_table :spree_rotating_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :spree_rotating_images, :image
  end
end
