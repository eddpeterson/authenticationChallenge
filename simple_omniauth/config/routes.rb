SimpleOmniauth::Application.routes.draw do
  root :to => 'application#index'
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => "signout"
end
