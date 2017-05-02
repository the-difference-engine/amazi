
Rails.application.routes.draw do
  devise_for :users
	get '/admin', to:'home#admin'
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
      resources :problems
    end
  end



  resources :water_providers do
    get "/:id" => 'water_providers/chemical_categories#show'
  end
  root to: 'locations#map'
  resources :chemicals
  get "/locations/:id/new_image", to: "locations#new_image"
  get "/locations/search", to: "locations#search"
  post "/locations/select", to: "locations#select"
  resources :locations
  resources :water_qualities
  resources :location_categories
  resources :location_subcategories
  resources :chemical_questions
  resources :chemical_categories

  resources :units
  resources :saved_locations
  resources :amazon_products

  get "/problems", to: "problems#index"
  get "/problems/new", to: "problems#new"
  post "/problems", to: "problems#create"

  get "/slick", to: "home#slick"
  post "/uploaded_images", to: "images#create_image"
  post "/feedback", to: "mailers#send_feedback"

end
