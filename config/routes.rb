Rails.application.routes.draw do

  root to: 'layouts#index'
  resources :accounts do
    resources :inventory, only: [:index]
    resources :characters
  end
  post '/login', to: 'authentication#login'
  post '/logout', to: 'authentication#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
