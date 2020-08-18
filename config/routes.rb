Rails.application.routes.draw do

  
  namespace :usuarios do
    get 'materias/index'
    get 'materias/show'
    get 'materias/edit'
    get 'materias/new'
  end
  get 'usuarios/indexStudent'
  get 'usuarios/indexDocente'
  devise_for :usuarios
  
  resources :usuarios
 
  get 'usuarios/indexStudent'
 
  
  root to: "inicio#index"

  resources :cursos
  resources :usuarios do
    resources :anotaciones, module: :usuarios
    resources :materias, module: :usuarios
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
