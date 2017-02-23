Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :gadgets do
    resources :bookings, only: [:new, :create, :edit, :show]
    resources :reviews, only: [:new, :create, :index]
  end

  resources :bookings, only: [:index]
  get '/my-requests', to: 'bookings#my_requests'

  get '/search_results', to: 'gadgets#search_results'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]

end
