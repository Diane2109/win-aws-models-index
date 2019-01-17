Rails.application.routes.draw do




  get 'sessions/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'



  root to: 'pages#index'

  get '/startups', to: 'pages#startups', as: 'startups'
  get '/investment', to: 'pages#investment'
  get '/use-case', to: 'pages#use-case'

  resources :users, except: [:new], except: [:destroy]
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'destroy', to: 'users#destroy'

  resources :partners, except: [:destroy]
  get 'new', to: 'partners#new'
  get 'destroy', to: 'partners#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
