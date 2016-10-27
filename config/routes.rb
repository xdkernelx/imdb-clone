Rails.application.routes.draw do
  devise_for :users
  root "films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :reviews, only: [:index]
  resources :films do
    resources :reviews
  end

end
