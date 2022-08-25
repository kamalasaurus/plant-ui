# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tubes
  resources :populations
  resources :seedboxes
  resources :seeds

  resource :bulk_upload, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
