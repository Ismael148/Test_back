Rails.application.routes.draw do
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home' 
  get '/model', to: 'pages#model'
  resources :audis
  resources :nissans
  resources :fords
  resources :bmws
  resources :hyundais
end
