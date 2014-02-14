Everlastly::Application.routes.draw do

  resources :users
  resources :welcome

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  root "welcome#index"

end
