Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :points
  
  root "welcome#index"

end
