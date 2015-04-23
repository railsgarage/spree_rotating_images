class Spree::Admin::RotatingImagesController < Spree::Admin::ResourceController

  def index
    respond_with(@collection)
  end

  def collection
    Spree::RotatingImage.all
  end

end
