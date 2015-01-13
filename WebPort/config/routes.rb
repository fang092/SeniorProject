Rails.application.routes.draw do
  get 'users/new'

  root    'static_pages#home'

  get 'gallery' => 'static_pages#gallery'

  get 'profiles' => 'static_pages#profiles'

  get 'mhcodex'  => 'static_pages#mhcodex'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'signup' => 'users#new'

  resources :users

end
