Vanban::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'site#index'

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  resources :users do
    resources :kanbans
  end

  resources :blocks

  get 'dashboard' => 'kanbans#show'


  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'






end
