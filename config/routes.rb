Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

#directors

    get("/", { :controller => "directors", :action => "index" })

  #Create
    get("/directors/new", { :controller => "directors", :action => "new_form" })
    get("/directors/create_director", { :controller => "directors", :action => "create_row" })

  #Read
    get("/directors",           { :controller => "directors", :action => "index" })
    get("/directors/:id",           { :controller => "directors", :action => "show" })

  #Update
    get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
    get("/directors/update_director/:id", { :controller => "directors", :action => "update_row" })

  #Delete
    get("/directors/delete_director/:id", { :controller => "directors", :action => "destroy" })

#actors

    get("/", { :controller => "actors", :action => "index" })

  #Create
    get("/actors/new", { :controller => "actors", :action => "new_form" })
    get("/actors/create_actor", { :controller => "actors", :action => "create_row" })

  #Read
    get("/actors",           { :controller => "actors", :action => "index" })
    get("/actors/:id",           { :controller => "actors", :action => "show" })

  #Update
    get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
    get("/actors/update_actor/:id", { :controller => "actors", :action => "update_row" })

  #Delete
    get("/actors/delete_actor/:id", { :controller => "actors", :action => "destroy" })

#movies

    get("/", { :controller => "movies", :action => "index" })

  #Create
    get("/movies/new", { :controller => "movies", :action => "new_form" })
    get("/movies/create_movie", { :controller => "movies", :action => "create_row" })

  #Read
    get("/movies",           { :controller => "movies", :action => "index" })
    get("/movies/:id",           { :controller => "movies", :action => "show" })

  #Update
    get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
    get("/movies/update_movie/:id", { :controller => "movies", :action => "update_row" })

  #Delete
    get("/movies/delete_movie/:id", { :controller => "movies", :action => "destroy" })


end
