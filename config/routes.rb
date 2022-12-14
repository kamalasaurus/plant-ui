# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  resources :tubes_by_accessions, only: %i[index create]
  resources :plant_samples
  resources :tubes, :populations, :seedboxes, :seeds

  resources :bulk_upload, only: %i[index create]
  resources :generate_csv, only: %i[create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'root#index'
end
