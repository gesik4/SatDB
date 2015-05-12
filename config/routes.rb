Rails.application.routes.draw do
  root  'pages#main'
  resources :testimonials, only: [:index]
  get 'help' => 'pages#help'
end