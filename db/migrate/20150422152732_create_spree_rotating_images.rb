class CreateSpreeRotatingImages < ActiveRecord::Migration
  def change
    create_table :spree_rotating_images do |t|
      t.string :page
      t.string :name
    end
  end
end
