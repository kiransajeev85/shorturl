Rails.application.routes.draw do
  resources :shorts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'shorts/red'
  root 'shorts#new'

  get '/:id', to: 'shorts#red'
end
