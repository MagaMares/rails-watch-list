Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [ :create, :index, :new, :show, :destroy ]
end
