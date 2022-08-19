Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :movies do
    resources :bookmarks
  end

  resources :lists, except: :index do
    resources :bookmarks
  end

  resources :bookmarks, only: :destroy
end
