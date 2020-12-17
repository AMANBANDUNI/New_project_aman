Rails.application.routes.draw do
  resources :products
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get "/soft-delete/:id" => "products#soft_delete"

  get "/un-delete/:id" => "products#undeleted"

  # post "/products_destroy_path", to: "products#selected_destroy"

  post "selected_destroy", to: "products#selected_destroy", as: "products_destroy"

end
