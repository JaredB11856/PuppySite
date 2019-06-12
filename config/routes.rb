Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :mothers
  resources :litters
  resources :puppies

  get 'our_dogs', to: 'pages#our_dogs'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
