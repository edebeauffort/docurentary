Rails.application.routes.draw do

  root to: 'pages#home'
  resources :gadgets, only:[:show, :new, :create, :edit, :update, :destroy]

  devise_for :users
mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
