Rails.application.routes.draw do
  resources :requisitos
  resources :regra_negocios
  resources :diagramas
  resources :glossarios
  resources :projetos
  resources :users
  
end
