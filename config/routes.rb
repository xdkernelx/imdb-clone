Rails.application.routes.draw do

  # devise_scope :users do
  #   get "users/sign_in" => "films#index" # custom path to login/sign_in
  #   get "users/sign_up" => "films#index", as: "new_user_registration" # custom path to sign_up/registration
  # end

  devise_for :users
  root "films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :reviews, only: [:index]
  resources :films do
    resources :reviews
  end

end
