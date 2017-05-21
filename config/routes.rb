Rails.application.routes.draw do

  resource :enrollments, only: [:create, :destroy]

  resource :sessions, only: [:new, :create, :destroy]

  resources :users
  
  resources :categories do 
  	resources :events, except: [:index]
  end
  
  resources :pages do 
  	collection { get 'about'}
  end
  
  root 'pages#index'
end
