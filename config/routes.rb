Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  resources :gadgets
  get '/search_results', to: 'gadgets#search_results'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
   root to: 'pages#home'
end
