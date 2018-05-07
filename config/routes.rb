Rails.application.routes.draw do
  resources :collections
 get "logout" => "session#destroy", :as => "logout"
 get "login" => "session#new", :as => "login"
 post "login" => "session#create"
 get "signup" => "users#new", :as => "signup"
 resources :users
 resources :session
 resources :notes
 resources :collections
 root :to => "notes#index"
end
