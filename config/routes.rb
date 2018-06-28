Rails.application.routes.draw do
  get 'welcome/index'

  resources :contributors

  root 'welcome#index'
end
