Rails.application.routes.draw do
  devise_for :users
   root 'ls_ranks#index'
     # get "ls_ranks/search" => 'ls_ranks#search'
  resources :ls_ranks do
    collection do
     get 'search'
     get 'show_all'
    end
  end

   resources :users, only: :show

   resources :school_info, only: :show
   # get 'ls_ranks' => 'ls_ranks#index'
   # get 'ls_ranks/new'  => 'ls_ranks#new'
   # get 'ls_ranks/show' => 'ls_ranks#show'
   # post 'ls_ranks'     => 'ls_ranks#create'
   # get  'ls_ranks/show_all' => 'ls_ranks#show_all'
   # get  'users/:id'    => 'users#show'


end



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

