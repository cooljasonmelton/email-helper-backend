Rails.application.routes.draw do
  
  get '/profile', to: 'users#profile'

  resources :contact_tags
  resources :tags
  resources :contacts
  resources :templates
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
