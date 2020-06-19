Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/contacts" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  get "/contacts/:id" => "contacts#show"
  post "/contacts" => "contacts#create"
  post "/contacts/:id/edit" => "contacts#edit"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/contacts' => 'contacts#index'  
    post '/contacts' => 'contacts#create'
    get '/contacts/:id' => 'contacts#show'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'

    #User Create/Sign-In
    post "/users" => "users#create"

    #Create Sessions/Log-In
    post "/sessions" => "sessions#create"
  end
end