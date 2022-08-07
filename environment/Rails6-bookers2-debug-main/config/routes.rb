Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"

  resources :books, only: [:show,:index,:edit,:create,:destroy,:update] do
    resource :favorites, only: [:create, :destroy]
    resources :bookcomments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:index,:edit,:update]
  get "home/about"=>"homes#about"
  
    # ネストさせる
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end