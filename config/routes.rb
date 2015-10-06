Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  resources :our_jokes, only: [] do
    member do 
      get :vote
    end
  end
end
