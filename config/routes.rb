Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :cohorts do
    resources :groups, only: [:new, :create]
  end
  resources :students
  root 'sessions#new'

  post '/sort' => 'groups#sort'
end
