Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets, only: [:create, :new, :index, :edit, :update]
  root to: "pets#index"
end
