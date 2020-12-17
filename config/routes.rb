Rails.application.routes.draw do
  resources :products
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get "/soft-delete/:id" => "products#soft_delete"

  get "/un-delete/:id" => "products#undeleted"

  post "destroy_multiple", to: "products#destroy_multiple", as: "products_destroy"

end
