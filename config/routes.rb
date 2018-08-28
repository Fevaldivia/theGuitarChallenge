Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#welcome'
  post "/account" => "home#create", :as => :create_account
end
