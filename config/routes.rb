Rails.application.routes.draw do

  resources :users
  
  resources :categories do 
  	resources :events, except: [:index]
  end
  
  resources :pages do 
  	collection { get 'about'}
  end
  
  root 'pages#index'
end
