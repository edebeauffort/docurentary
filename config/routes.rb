Rails.application.routes.draw do

  resources :gadgets, only:[:index, :show, :new, :create, :edit, :update, :destroy]

  get '/search_results', to: 'gadgets#search_results'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
