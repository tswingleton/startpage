Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :campaigns_to_dos
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
