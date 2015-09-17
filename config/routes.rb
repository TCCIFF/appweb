Rails.application.routes.draw do
  devise_for :users
  get 'homepage/index'

  root 'homepage#index'

  resources :requisitos
  resources :regra_negocios
  resources :diagramas
  resources :glossarios
  resources :projetos
  resources :users

end
