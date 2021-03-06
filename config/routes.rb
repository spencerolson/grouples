Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :cohorts do
    resources :groups, only: [:new, :create, :index]
    resources :photos, only: [:new, :create]
    resources :students, only: [:new, :create, :update]
    resources :students, only: [:new, :create] do
    	resources :photos, only: [:new, :create]
    end
  end
  resources :students, only: [:show, :edit, :destroy]
  root 'sessions#new'

  post '/sort' => 'groups#sort'
end
