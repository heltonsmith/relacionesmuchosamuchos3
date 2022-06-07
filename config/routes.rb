Rails.application.routes.draw do
  get 'matricula/index'
  resources :alumnos
  resources :asignaturas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "matricula#index"

  get "/matricula/new", to: "matricula#new"
end
