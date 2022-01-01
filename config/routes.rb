Rails.application.routes.draw do
  resources :invitees
  resources :rsvps
  resources :invitations
  resources :events
  resources :children
  resources :users
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/register", to: "users#create"
  get "/me", to: "users#show"
end
