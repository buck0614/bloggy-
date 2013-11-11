Bloggy::Application.routes.draw do
resources :b_logs


  get "static_pages/test1" => "static_pages#test1"

  get "static_pages/test2"

  get "static_pages/test3"


  # about-us in Main
  get "main/about-us"=> "main#about_us", :as => :about_us
  get "main/home"=>"main#home", :as => :home 
  get "main/privacy"=> "main#privacy", :as => :privacy
  get "main/contact_us"=> "main#contact_us", :as => :contact_us
  get "main/tos"=> "main#_tos"
  get "our-team"=>"main#our_team",  :as => :our_team
  get "main/vision"=>"main#vision"
  get "main/b_log"=>"main#b_log"
  # contact-us in Main
  # tos Main

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
