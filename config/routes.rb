Rails.application.routes.draw do
  resources :seedboxes
  resources :bins #tubes?
  resources :seeds
  # population

  resource :bulk_upload, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
