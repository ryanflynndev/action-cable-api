Rails.application.routes.draw do
  resources :messages, only: [:index, :create]
  resources :chatrooms, only: [:index, :create]
  mount ActionCable.server, at: '/cable'
end
