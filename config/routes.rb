Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get '/auth/spotify/callback', to: "sessions#create", as: "login"
  delete 'logout', to: 'sessions#destroy'

  resources :dashboard, only: [:index]

end
