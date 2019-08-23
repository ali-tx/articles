Rails.application.routes.draw do
  # devise_for :admins
  devise_for :users
  # resources :users

  resources :articles do
    resources :comments
  end

  root 'articles#index'
  get '/search' => 'pages#search', :as => 'search_page'
end