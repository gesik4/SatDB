Rails.application.routes.draw do
  root  'pages#main'
  get 'help' => 'pages#help'
  get 'mentor' => 'mentor#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :satellites, only: [:index, :new, :show, :create, :destroy]
  resources :orbits, only: [:index, :new, :show, :create, :destroy]
  resources :countries, only: [:index, :new, :show, :create, :destroy]
  resources :compressions, only: [:index, :new, :show, :create, :destroy]
  resources :agencies, only: [:index, :new, :show, :create, :destroy]
  resources :testimonials, only: [:index, :new, :show, :create, :destroy]
end