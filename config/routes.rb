Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
  
  resources :users do
    resources :points
  end
  root "welcome#index"

end
