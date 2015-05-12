Rails.application.routes.draw do
  root  'pages#main'
  resources :testimonials, only: [:index, :new, :show, :create]
  get 'help' => 'pages#help'
  get 'mentor' => 'mentor#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end