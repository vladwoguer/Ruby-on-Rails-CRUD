Rails.application.routes.draw do
  resources :numeros
  resources :salas
  resources :testes
  resources :menus
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
