Rails.application.routes.draw do
  #get 'session/new'

  #get 'session/create'

  #get 'session/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "movies#index"
get "/movies", to: "movies#show"
get "/forums", to: "forum#show"
get "/posts", to: "form#show"

resources :movies
resources :forums, only: [:show, :create]
resources :posts

get "signup", to: "users#new", as: "sign_up"
resources :users, only: [:create]

get "/login" => "session#new", as: "log_in"
post "/login" => "session#create"
delete "/logout" => "session#destroy", as: "log_out"

end
