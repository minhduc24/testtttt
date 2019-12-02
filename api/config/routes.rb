Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :auth do
    post "/register", to: "auth#register"
    post "/login", to: "auth#login"
    post "/facebook_login", to: "facebook#login"
  end
end
