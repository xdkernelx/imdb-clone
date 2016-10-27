Rails.application.routes.draw do

  devise_scope :user do
    get "users/sign_in" => "films#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users
  root "films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :reviews, only: [:index]
  resources :films do
    resources :reviews
  end

end
