# frozen_string_literal: true

Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  
  post "/graphql", to: "graphql#execute"
  get "/graph_query", to: "graph_query#index", as: "graph_query"
  post "/graph_query", to: "graph_query#to_csv", as: "graph_to_csv"

  resources :tubes_by_accessions, only: %i[index create]
  resources :plant_samples
  resources :tubes, :populations, :seedboxes, :seeds

  resources :bulk_upload, only: %i[index create]
  resources :generate_csv, only: %i[create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'root#index'
end
