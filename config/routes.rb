Rails.application.routes.draw do
  root 'pages#index'
  get 'graph', to: 'pages#graph', as: 'graph'
end
