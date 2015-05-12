Rails.application.routes.draw do
  root  'pages#main'
  resources :testimonials, only: [:index, :new, :show, :create]
  get 'help' => 'pages#help'
end