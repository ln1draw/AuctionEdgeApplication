Rails.application.routes.draw do
  get 'chomper/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chomper#new'
end
