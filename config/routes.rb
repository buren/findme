Findme::Application.routes.draw do

	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :searches
  resources :interests

  get "home/index"
  
  root :to => 'home#index'

end
