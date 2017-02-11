# == Route Map
#
#                 Prefix Verb   URI Pattern                                         Controller#Action
#                   root GET    /                                                   pages#home
#                  users GET    /users(.:format)                                    users#index
#                        POST   /users(.:format)                                    users#create
#               new_user GET    /users/new(.:format)                                users#new
#              edit_user GET    /users/:id/edit(.:format)                           users#edit
#                   user GET    /users/:id(.:format)                                users#show
#                        PATCH  /users/:id(.:format)                                users#update
#                        PUT    /users/:id(.:format)                                users#update
#                        DELETE /users/:id(.:format)                                users#destroy
#     product_favourites GET    /products/:product_id/favourites(.:format)          favourites#index
#                        POST   /products/:product_id/favourites(.:format)          favourites#create
#  new_product_favourite GET    /products/:product_id/favourites/new(.:format)      favourites#new
# edit_product_favourite GET    /products/:product_id/favourites/:id/edit(.:format) favourites#edit
#      product_favourite GET    /products/:product_id/favourites/:id(.:format)      favourites#show
#                        PATCH  /products/:product_id/favourites/:id(.:format)      favourites#update
#                        PUT    /products/:product_id/favourites/:id(.:format)      favourites#update
#                        DELETE /products/:product_id/favourites/:id(.:format)      favourites#destroy
#        product_reviews GET    /products/:product_id/reviews(.:format)             reviews#index
#                        POST   /products/:product_id/reviews(.:format)             reviews#create
#     new_product_review GET    /products/:product_id/reviews/new(.:format)         reviews#new
#    edit_product_review GET    /products/:product_id/reviews/:id/edit(.:format)    reviews#edit
#         product_review GET    /products/:product_id/reviews/:id(.:format)         reviews#show
#                        PATCH  /products/:product_id/reviews/:id(.:format)         reviews#update
#                        PUT    /products/:product_id/reviews/:id(.:format)         reviews#update
#                        DELETE /products/:product_id/reviews/:id(.:format)         reviews#destroy
#         product_images GET    /products/:product_id/images(.:format)              images#index
#                        POST   /products/:product_id/images(.:format)              images#create
#      new_product_image GET    /products/:product_id/images/new(.:format)          images#new
#     edit_product_image GET    /products/:product_id/images/:id/edit(.:format)     images#edit
#          product_image GET    /products/:product_id/images/:id(.:format)          images#show
#                        PATCH  /products/:product_id/images/:id(.:format)          images#update
#                        PUT    /products/:product_id/images/:id(.:format)          images#update
#                        DELETE /products/:product_id/images/:id(.:format)          images#destroy
#     product_line_items GET    /products/:product_id/line_items(.:format)          line_items#index
#                        POST   /products/:product_id/line_items(.:format)          line_items#create
#  new_product_line_item GET    /products/:product_id/line_items/new(.:format)      line_items#new
# edit_product_line_item GET    /products/:product_id/line_items/:id/edit(.:format) line_items#edit
#      product_line_item GET    /products/:product_id/line_items/:id(.:format)      line_items#show
#                        PATCH  /products/:product_id/line_items/:id(.:format)      line_items#update
#                        PUT    /products/:product_id/line_items/:id(.:format)      line_items#update
#                        DELETE /products/:product_id/line_items/:id(.:format)      line_items#destroy
#     product_categories GET    /products/:product_id/categories(.:format)          categories#index
#                        POST   /products/:product_id/categories(.:format)          categories#create
#   new_product_category GET    /products/:product_id/categories/new(.:format)      categories#new
#  edit_product_category GET    /products/:product_id/categories/:id/edit(.:format) categories#edit
#       product_category GET    /products/:product_id/categories/:id(.:format)      categories#show
#                        PATCH  /products/:product_id/categories/:id(.:format)      categories#update
#                        PUT    /products/:product_id/categories/:id(.:format)      categories#update
#                        DELETE /products/:product_id/categories/:id(.:format)      categories#destroy
#               products GET    /products(.:format)                                 products#index
#                        POST   /products(.:format)                                 products#create
#            new_product GET    /products/new(.:format)                             products#new
#           edit_product GET    /products/:id/edit(.:format)                        products#edit
#                product GET    /products/:id(.:format)                             products#show
#                        PATCH  /products/:id(.:format)                             products#update
#                        PUT    /products/:id(.:format)                             products#update
#                        DELETE /products/:id(.:format)                             products#destroy
#                 orders GET    /orders(.:format)                                   orders#index
#                        POST   /orders(.:format)                                   orders#create
#              new_order GET    /orders/new(.:format)                               orders#new
#             edit_order GET    /orders/:id/edit(.:format)                          orders#edit
#                  order GET    /orders/:id(.:format)                               orders#show
#                        PATCH  /orders/:id(.:format)                               orders#update
#                        PUT    /orders/:id(.:format)                               orders#update
#                        DELETE /orders/:id(.:format)                               orders#destroy
#                        GET    /products/:gender(.:format)                         products#search
#                  login GET    /login(.:format)                                    session#new
#                        POST   /login(.:format)                                    session#create
#                        DELETE /login(.:format)                                    session#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/shop/women' => 'pages#female'
  get '/shop/men' => 'pages#male'

  get '/shop/women/:category' => 'pages#womenCategory', :as => 'women_products_category'
  get '/shop/men/:category' => 'pages#menCategory', :as => 'men_products_category'

  get '/products/gender/:gender' => 'products#search'

  resources :users
  resources :categories
  resources :products do
    resources :favourites
    resources :reviews
    resources :images
    resources :line_items
  end

  resources :orders

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
