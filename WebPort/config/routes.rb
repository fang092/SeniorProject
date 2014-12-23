Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/gallery'

  get 'static_pages/profiles'

  get 'static_pages/mhcodex'

  resources :users

end
