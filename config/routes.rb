Rails.application.routes.draw do
  resources :labs
  resources :snippets
  devise_for :users
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  root 'labs#index'

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    get "logout" => "devise/sessions#destroy"
  end
end
