Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :v2, constraints: ApiVersion.new('v2', false) do
    resources :auctions do
      resources :items
    end
  end

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :auctions do
      resources :items
    end
  end

  post "login", to: "authentication#authenticate"
  post 'register', to: 'users#create'
end
