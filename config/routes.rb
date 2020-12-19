Rails.application.routes.draw do
  resources :properties do
    post 'comments', to: 'comments#create'
  end
  resources :users
  root 'properties#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
