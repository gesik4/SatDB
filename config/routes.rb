Rails.application.routes.draw do
  root  'pages#main'
  get 'testimonials' => 'pages/testimonials'
  get 'help' => 'pages#help'
end