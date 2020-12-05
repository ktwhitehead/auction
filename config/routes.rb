Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "authenticate", to: "authentication#authenticate"

  get "auctions", to: "auction#list"
end