Rails.application.routes.draw do
  resources :conversations do
    resources :messages
  end
  resources :user_interests
  resources :interests, only: [:index, :show]
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :matches, only: [:create, :destroy]
  get '/', to: 'static_pages#index', as: 'home'
  get '/new', to: 'users#new', as: 'new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
