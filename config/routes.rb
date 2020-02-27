Rails.application.routes.draw do
  get 'tamagotchis/', to: 'tamagotchis#index'
  get 'tamagotchis/:id', to: 'tamagotchis#show'
  get 'statuses/', to: 'statuses#index'
  post 'statuses/', to: 'statuses#create'
  get 'statuses/:id', to: 'statuses#show'
  patch 'statuses/:id', to: 'statuses#update'
  delete 'statuses/:id', to: 'statuses#destroy'
  get 'items/', to: 'items#index'
  get 'items/:id', to: 'items#show'
  get 'inventories/:status_id', to: 'inventories#index'
  post 'inventories/create', to: 'inventories#create'
  get 'inventories/:id', to: 'inventories#show'
  patch 'inventories/:id', to: 'inventories#update'
  delete 'inventories/destroy', to: 'inventories#destroy'
  post 'users/create', to: 'users#create'
  post 'users/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
