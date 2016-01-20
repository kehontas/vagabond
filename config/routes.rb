Rails.application.routes.draw do
  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  get "/users/:id/posts", to: "posts#index"
  get "/users/:id/posts/new", to: "posts#new", as: "new_post"
  post "/users/:id/posts", to: "posts#create"
  get "/users/:id/posts/:id", to: 'posts#show', as: 'post'
end
