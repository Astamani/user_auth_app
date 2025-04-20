Rails.application.routes.draw do
  get "home/index"
  # Devise routes (already present)
  devise_for :users
  resource :profile, only: [:show, :edit, :update]
  resources :users, only: [:edit, :show]



  # Mount letter_opener_web only in development
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  namespace :admin do
    get "dashboard", to: "dashboard#index"
    resources :users, only: [:show, :edit, :update] # <-- Add this
  end  
   
  # config/routes.rb
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :teacher do
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :student do
    get 'dashboard', to: 'dashboard#index'
  end

  # Your root or other routes
  root "home#index"
end
