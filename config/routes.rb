# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tubes, :populations, :seedboxes, :seeds

  resources :bulk_upload, only: [:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "root#index"
end
