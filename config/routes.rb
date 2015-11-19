Rails.application.routes.draw do
  devise_for :users
  root to: "games#index"

  resources :players

  resources :games do
    resources :plays
    resources :characters
  end

end
