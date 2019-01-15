Rails.application.routes.draw do




  get 'sessions/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'



  root to: 'pages#index'

  get '/startups', to: 'pages#startups', as: 'startups'
  get '/investment', to: 'pages#investment'
  get '/use-case', to: 'pages#use-case'

  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
