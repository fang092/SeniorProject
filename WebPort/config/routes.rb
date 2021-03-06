Rails.application.routes.draw do

  

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

  get 'portfolios' => 'portfolios#index'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :monsters,   only: [:create, :destroy, :edit, :new, :show, :update]
  resources :pdfs,   only: [:create, :destroy, :edit, :new, :show, :update]
  resources :photos,   only: [:create, :destroy, :edit, :new, :show, :update]
  resources :portfolios,   only: [:create, :destroy, :edit, :new, :show, :update]
  

end
