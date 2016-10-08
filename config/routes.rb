Rails.application.routes.draw do
  devise_for :users
	# get '/', to:'home#index'
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
      resources :chemcial_questions
      resources :users
      resources :saved_locations
    end
  end

  resources :water_providers do
    get "/:id" => 'water_providers/chemical_categories#show'
  end
  resources :chemicals, only: [:show]
  resources :locations, only: [:show, :index]
  root to: 'locations#map'

end
