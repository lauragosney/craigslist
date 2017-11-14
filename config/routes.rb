Rails.application.routes.draw do

  resources :reviews

  resources :categories

  root "categories#index"

end
