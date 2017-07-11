Rails.application.routes.draw do
  get 'welcome/index'


  devise_for :users do
    # controllers: {sessions: 'users/sessions'}
    #  path_names: { sign_in: "login", sign_out: "logout" }
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  resources :users do
    resources :points
  end

  root "welcome#index"

end
