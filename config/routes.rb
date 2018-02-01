Rails.application.routes.draw do
  post 'upload', to: 'chomper#create'
  get  'index', to: 'chomper#index'

  root 'chomper#new'
end
