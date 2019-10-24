Rails.application.routes.draw do
  resources :advogados
  root 'advogados#index'

  devise_for :users
  resources :processos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end