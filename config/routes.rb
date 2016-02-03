Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'
  # get 'welcome/blogs'
  # get 'welcome/blog_item'
  match '/blogs/:id' => 'welcome#blog_item', :as => :blog_with_title, via: :get
  match '/news/:id' => 'welcome#news_item', :as => :news_with_title, via: :get  
  # get 'welcome/news'
  get 'welcome/news_item'
  get 'welcome/page'
  match '/blogs' => 'welcome#blogs', via: :get 
  match '/news' => 'welcome#news', via: :get
  match '/pages/:id' => 'welcome#page', :as => :page_with_title, via: :get  
  match 'blogs/category/:id' => 'welcome#blog_categories', :as => :particular_category_blogs, via: :get
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
end
