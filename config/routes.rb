Rails.application.routes.draw do

  root 'pages#home'
  get 'admin/home', as: :admin

  get 'pages/about', as: :about
  get 'pages/contact', as: :contact

  resources :portfolios
  resources :categories do
    resources :products
  end
  # Devise
  devise_for :admins

  post 'quote', to: 'quotes#create', as: 'quote_request'
  post 'contact', to: 'contacts#create', as: 'contact_request'

end
