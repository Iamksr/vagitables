Rails.application.routes.draw do
  resources :categories
  resources :vegitables
  devise_for :users
   resources :cart_items
  resources :carts
  root 'vegitables#index'
    resources :products do
  	 get "/cart" => "vegitables#add_to_cart"
     get "/wishlist", action: :add_wishlist, as: :add_wishlist
  end
  get 'category/:id/' => "categories#show"
  get '/cart' => "vegitables#cart"
  # get '/wishlist' => "products#wishlist"
  post '/add_to_cart/:vegitable_id' => 'carts#add_to_cart', :as => 'add_to_cart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
