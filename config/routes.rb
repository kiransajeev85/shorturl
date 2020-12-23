Rails.application.routes.draw do
  resources :shorts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'shorts#new'
  resources :stats

  get 'stats', to: 'stats#index'

  get '/:id', to: 'shorts#red'
end
