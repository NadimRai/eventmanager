Rails.application.routes.draw do

  resources :categories
  
  resources :pages do 
  	collection { get 'about'}
  end
  
  root 'pages#index'
end
