Rails.application.routes.draw do
  get 'membership/index'
  get 'membership/create'
  resources :memberships, only:[:create]
  resources :messages, only: [:index, :create]
  resources :chatrooms, only: [:index, :create]

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  mount ActionCable.server, at: '/cable'
end
 