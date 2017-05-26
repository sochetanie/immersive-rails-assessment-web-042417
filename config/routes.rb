Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index]
  resources :appearances

  root 'episodes#index'
  get '/login', to: 'sessions#new', as:'log_in'
  post '/login', to:  'sessions#create', as: "session_create"
  get '/logout', to: 'sessions#destroy'

  
end
