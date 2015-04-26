class Spree::RotatingImage < ActiveRecord::Base

  has_attached_file :image, styles: { original: 'x300' }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
