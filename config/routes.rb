Rails.application.routes.draw do
  get 'creatures/index'

  root to: "creatures#index"

  get "/creatures", to: "creatures#index"
  get "/creatures/new", to: "creatures#new"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  patch "/creatures/:id", to: "creatures#update"
   # the destroy route
  delete "/creatures/:id", to: "creatures#destroy"
end
