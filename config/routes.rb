Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'restaurants#index'

  # get 'restaurants' => 'restaurants#index'
  # get 'restaurants/new' => 'restaurants#new', as: 'restaurant_new'

  # get 'restaurants/:id' => 'restarant#show', as: 'restaurant'
  # post 'restaurants' => 'restaurants#create'

  resources :restaurants do
    collection do
      get 'reviews' => 'restaurant#reviews'
    end
  end
end
