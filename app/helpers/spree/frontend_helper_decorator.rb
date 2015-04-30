Spree::FrontendHelper.module_eval do

  def rotating_images_for_params(params)
    if params[:controller] == 'spree/taxons' # we are on a taxon page
      images = Spree::RotatingImage.where(page: @taxon.name.downcase)
    elsif params[:controller] == 'spree/home' # we are on the home page
      images = Spree::RotatingImage.where(page: 'home')
    else
      images = nil
    end
    images.inject('') { |string, image| string += "<li><img src='#{image.image.url}'></li>" }.html_safe rescue nil
  end

end
