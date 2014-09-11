RailsPortfolioApp::Application.routes.draw do
  #
  # Pages Routes
  #
  root :to => 'pages#home'
  get 'about' => 'pages#about', :as => 'about'
  
  #
  # Projects Routes
  #
  get 'class_projects' => 'class_projects#index', :as => 'projects_index'
  get 'class_project/:id' => 'class_projects#show', :as => 'project_show'
  
  get 'new_project' => 'class_projects#new', :as => 'new_project'
  post 'class_projects' => 'class_projects#create', :as => 'create_project'
  
  get 'class_project/:id/edit' => 'class_projects#edit', :as => 'edit_project'
  put 'class_project/:id' => 'class_projects#update', :as => 'update_project'
  
  #
  # Contacts Routes
  #
  get 'contacts' => 'contacts#index', :as => 'contacts_index'
  get 'contact/:id' => 'contacts#show', :as => 'contacts_show'
  
  get 'new_contact' => 'contacts#new', :as => 'new_contact'
  post 'contacts' => 'contacts#create', :as => 'create_contact'
  
  get 'contact/:id/edit' => 'contacts#edit', :as => 'edit_contact'
  put 'contact/:id' => 'contacts#update', :as => 'update_contact'
  
  #
  # Links Routes
  #
  get 'links' => 'links#index', :as => 'links_index'
  get 'link/:id' => 'links#show', :as => 'link_show'
  
  get 'new_link' => 'links#new', :as => 'new_link'
  post 'links' => 'links#create', :as => 'create_link'
  
  get 'link/:id/edit' => 'links#edit', :as => 'edit_link'
  put 'link/:id' => 'links#update', :as => 'update_link'
  
  #
  # Articles Routes
  #
  get 'articles' => 'articles#index', :as => 'articles_index'
  get 'article/:id' => 'articles#show', :as => 'article_show'
  
  get 'new_article' => 'articles#new', :as => 'new_article'
  post 'articles' => 'articles#create', :as => 'create_article'
  
  get 'article/:id/edit' => 'articles#edit', :as => 'edit_article'
  put 'article/:id' => 'articles#update', :as => 'update_article'
  
  get 'liked/:id' => 'likes#new', :as => 'like_article'
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  post "create_user" => 'users#create', :as => "create_user"
  get "signup" => 'users#new', :as => "signup"

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
