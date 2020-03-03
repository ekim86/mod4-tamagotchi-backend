Rails.application.routes.draw do
  get 'tamagotchis/', to: 'tamagotchis#index'
  get 'tamagotchis/:id', to: 'tamagotchis#show'

  post 'statuses/', to: 'statuses#create'
  get 'statuses/:id', to: 'statuses#show'
  get 'statuses/user/:id', to: 'statuses#user_statuses'

  get 'items/', to: 'items#index'

  get 'inventories/:status_id', to: 'inventories#index'
  post 'inventories/buy', to: 'inventories#buy'
  post 'inventories/sell', to: 'inventories#sell'
  post 'inventories/feed', to: 'inventories#feed'
  post 'inventories/play', to: 'inventories#play'

  post 'users/create', to: 'users#create'

  post "/login", to: "auth#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
