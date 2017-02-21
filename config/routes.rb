Rails.application.routes.draw do

  resources :gadgets, only:[:show, :new, :create, :edit, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
     root to: 'pages#home'

end
