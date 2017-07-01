Rails.application.routes.draw do
  resources :jobs
  resources :managers


  match 'auth/:provider/callback', to: 'sessions#create', via: [:post,:get]

  get 'login', to: 'sessions#login', as: 'login'
  get 'logout', to: 'sessions#logout', as: 'logout'
  get 'auth/github', as: 'github_login'

  root 'jobs#index', as: 'jobs_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
