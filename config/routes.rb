Rails.application.routes.draw do

  resources :listings

  resources :categories

  root "categories#index"

end
