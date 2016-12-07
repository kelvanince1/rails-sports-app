Rails.application.routes.draw do
  resources :starts
  resources :stats
  resources :rankings
  resources :startsits
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
