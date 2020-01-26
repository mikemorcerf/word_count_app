Rails.application.routes.draw do
  root 'pages#index'
  get 'graph', to: 'pages#graph', as: 'graph'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
