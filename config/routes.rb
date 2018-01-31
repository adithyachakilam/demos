Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/hello', to: 'pages#home', as: 'hellopage'

  root to: 'pages#home'
end
