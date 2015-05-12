Rails.application.routes.draw do
  root  'pages#main'
  get 'pages/testimonials'
  get 'help' => 'pages#help'
end