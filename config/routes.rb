Rails.application.routes.draw do
  resources :oenologists
  resources :magazines
  devise_for :users
  resources :strains
  resources :wines
  root 'wines#index'
end
