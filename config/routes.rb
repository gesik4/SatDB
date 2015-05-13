Rails.application.routes.draw do
  get 'compressions/index'

  get 'compressions/show'

  get 'countries/index'

  get 'countries/show'

  get 'satellites/index'

  get 'satellites/show'

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
end