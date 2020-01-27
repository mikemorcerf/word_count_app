Rails.application.routes.draw do
  root 'pages#index'
  get 'graph', to: 'pages#graph', as: 'graph'
  get 'retrieve_data', to: 'pages#retrieve_data', as: 'retrieve_data'
end
