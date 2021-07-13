Rails.application.routes.draw do
  #resources :tushars
  resources :iot_data
  #resources :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#home'
  get 'signup', to: 'user#signup'
  get 'search', to: 'user#search'
  get 'arduino', to: 'user#arduino'
  get 'espDataCollection', to: 'user#espDataCollection'
end
