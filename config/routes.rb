Rails.application.routes.draw do
  root to: 'meetings#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :meetings, only: %i[new create show]
end
