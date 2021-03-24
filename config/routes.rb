Rails.application.routes.draw do
  
  root 'static_pages#home'
 
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users

  # Force all access to the app over SSL, use Strict-Transport-Security,
  #  and use secure cookies.
  config.force_ssl = true

end
