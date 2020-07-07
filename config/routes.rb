Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root  'diaries#index'
  resources :diaries do
    resources :likes, only: [:create]
  end
  resources :users, only: [:show]
end
