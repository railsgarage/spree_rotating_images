Spree::FrontendHelper.module_eval do

  def rotating_images_for_params(params)
    if params[:controller] == 'spree/taxons' # we are on a taxon page

      images = Spree::RotatingImage.where(page: @taxon.name.downcase)

    elsif params[:controller] == 'spree/home' # we are on the home page

      images = Spree::RotatingImage.where(page: 'home')

    elsif params.is_a?(String)

      images = Spree::RotatingImage.where(page: params)

    else
      images = nil
    end
    images.inject('') { |string, image| string += "<li><a href='#{image.link}'><img src='#{image.image.url}'></a></li>" }.html_safe rescue nil
  end

end
