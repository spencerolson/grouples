Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :cohorts
  resources :students
  root 'sessions#new'
end
