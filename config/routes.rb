Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants", to: "restaurants#new"
  # get "/restaurants/:id", to: "restaurants#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end

