Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'our_dogs', to: 'pages#our_dogs'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
