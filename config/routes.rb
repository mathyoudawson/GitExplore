Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "https://api.github.com/graphql"
  end
  post "/graphql", to: "graphql#execute"
  get 'welcome/index'

  resources :contributors

  root 'welcome#index'
end
