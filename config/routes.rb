Rails.application.routes.draw do
  get "welcome/index"
  root "welcome#index"
  resources :events, :places, :categories
  resources :users, only: [:create, :destroy, :update]
  get "users/:id/categories", to: "users#find_categories"
  get "places_events/:id/", to: "places#event_places"
  get "categories/:id/events", to: "categories#find_events"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
