Rails.application.routes.draw do

  resources :gadgets, only:[:index, :show, :new, :create, :edit, :update, :destroy]

  # get '/search_results', to: 'gadgets#search_results'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
     root to: 'pages#home'

end
