Rails.application.routes.draw do
    get "/", to: "celebrities#index", as: "root"
    get "/show/:id", to: "celebrities#show", as: "show"
    post "/create", to: "celebrities#create"
    put "/update/:id", to: "celebrities#update"
    delete "/destroy/:id", to: "celebrities#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
