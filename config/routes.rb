Rails.application.routes.draw do
  devise_for :users
  resources :dojos
end
