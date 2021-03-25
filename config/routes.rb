Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
 
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

  # Sessions

  get 'sessions/new'
  resources :users

  # Login 

  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessons#destroy'

end
