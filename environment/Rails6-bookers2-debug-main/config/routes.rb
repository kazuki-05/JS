Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"

  resources :books, only: [:show,:index,:edit,:create,:destroy,:update] do
    resource :favorites, only: [:create, :destroy]
    resources :bookcomments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:index,:edit,:update]
  get "home/about"=>"homes#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end