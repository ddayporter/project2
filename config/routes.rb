Rails.application.routes.draw do
  devise_for :users
  root to: "games#index"

  resources :players

  resources :games do
    resources :plays
    resources :characters
  end

  resources :plays do
    member do
      post 'add_mission'
      delete 'remove_mission'
    end

  end

  resources :missions



end
