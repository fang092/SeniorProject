Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/gallery'

  get 'static_pages/profiles'

  get 'static_pages/mhcodex'

  get 'static_pages/about'

  resources :users

end
