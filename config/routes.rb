Rails.application.routes.draw do
<<<<<<< HEAD
  get 'pages/home'

  root '/', to: 'pages#home'
=======
  
  root to: "pages#home"

  get '/', to: 'pages#home'
>>>>>>> 5f558e93383b429cadd17f138897d2f0d81ade59

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  get "/posts", to: "posts#index"
  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create"
  get '/posts/:id', to: 'posts#show', as: 'post'
end
