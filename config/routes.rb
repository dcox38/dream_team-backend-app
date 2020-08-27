Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    get "/players" => "players#index"
    get "/players/:id" => "players#show"
    get "/teams" => "teams#index"
    get "/games" => "games#index"
    post "/teams" => "teams#create"
 

  end



end
