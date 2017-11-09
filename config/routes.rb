Rails.application.routes.draw do


  get 'password_resets/new'

  get 'password_resets/edit'

  get    'help'    => 'static_pages#help'
   get    'about'   => 'static_pages#about'
   get    'contact' => 'static_pages#contact'

  get '/signup', to: 'users#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
