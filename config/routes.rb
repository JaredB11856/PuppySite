Rails.application.routes.draw do
  resources :litters
  resources :puppies

  get 'our_dogs', to: 'pages#our_dogs'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
