Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :rotating_images
  end
end
