OmniauthWithMultipleAuthentications::Application.routes.draw do
  devise_for :users do
    get "sign_in", :to => "devise/sessions#new", :as => 'signin'
    get "sign_out", :to => "devise/sessions#destroy", :as => 'signout'
  end
 
  root :to => 'application#index'

end
