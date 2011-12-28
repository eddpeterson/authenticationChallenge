AuthorizationWithCancan::Application.routes.draw do
  
  resources :posts

  devise_for :users do
    get "sign_in", :to => "devise/sessions#new", :as => 'signin'
    get "sign_out", :to => "devise/sessions#destroy", :as => 'signout'
  end

  root :to => 'posts#index'


end
