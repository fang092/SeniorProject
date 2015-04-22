Rails.application.routes.draw do

  resources :portfolios

  resources :portfilos

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root    'static_pages#home'

  get 'gallery' => 'static_pages#gallery'

  get 'profiles' => 'static_pages#profiles'

  get 'mhcodex'  => 'static_pages#mhcodex'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'signup' => 'users#new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
