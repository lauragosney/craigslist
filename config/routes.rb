Rails.application.routes.draw do


  resources :categories do
    # then the listings are based on the category rather than a separate area
    resources :listings
  end

  # the homepage should be the categories controller, then the index action
  root "categories#index"

end
