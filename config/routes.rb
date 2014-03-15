Salon1::Application.routes.draw do

resources :salons do
 resources :comments
 resources :services
end

resources :users
resources :sessions, only: [:new, :create, :destroy]


get "/clients" => 'clients#new'
get "/clients/create" => 'clients#create'
get "/clients/show" => 'clients#show'

# resources :clients
# How to route any path a product ID on it. For Example:  get "/users/:user_id/show" => 'users#show'



  root 'welcome#index'

end


