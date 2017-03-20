Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "movies#index"
get "/movies", to: "movies#show"

resources :movies
resources :forums, only: [:show]
resources :posts, only: [:show]

end
