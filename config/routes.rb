Rails.application.routes.draw do
	get '/', to:'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :water_qualities
      resources :water_providers
      resources :locations
      resources :location_categories
      resources :location_subcategories
      resources :chemicals
      resources :chemical_categories
    end
  end

  resources :water_providers do
    get "/:id" => 'water_providers/chemical_categories#show'
  end
  resources :chemicals, only: [:show]

end
