Rails.application.routes.draw do
  resources :player_rankings_tes
  resources :player_rankings_wrs
  resources :player_rankings_rbs
  resources :player_rankings_qbs
  resources :sits
  resources :starts
  resources :stats
  resources :rankings
  resources :startsits
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
