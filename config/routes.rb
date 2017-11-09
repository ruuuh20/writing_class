Rails.application.routes.draw do


  get    'help'    => 'static_pages#help'
   get    'about'   => 'static_pages#about'
   get    'contact' => 'static_pages#contact'

  get '/signup', to: 'users#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :users
  resources :account_activations, only: [:edit]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
