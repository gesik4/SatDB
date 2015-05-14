Rails.application.routes.draw do
  get 'agencies/index'

  get 'agencies/show'

  root  'pages#main'
  resources :testimonials, only: [:index, :new, :show, :create, :destroy]
  get 'help' => 'pages#help'
  get 'mentor' => 'mentor#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :satellites, only: [:index, :new, :show, :create]
  resources :orbits, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :compressions, only: [:index, :show]
  resources :agencies, only: [:index, :show]
end