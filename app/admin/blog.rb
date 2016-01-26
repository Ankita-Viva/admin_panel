ActiveAdmin.register Blog do
	config.clear_action_items!
	# menu :label => "Add New Category", :parent => "Blogs", url: "/admin/blogs/new"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :description, :excerpt,  :image, :admin_user_id, :published, :meta_keywords, :meta_title, :meta_tags, :meta_description, category_id: []
       
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	index do
    selectable_column
    column :id
    column :title
    column :published
    # column :category, :category_id
    column "Category" do |blog|
		  blog.categories.map{ |p| p.title }.join(', ')
		end
    column :admin_user_id
    column :updated_at
    actions
  end
 
	form html: { multipart: true } do |f|
		f.semantic_errors *f.object.errors.keys
	  f.inputs "Blog Details" do
	    f.input :title
	    f.input :description, :as => :ckeditor
	    f.input :excerpt  
	    f.input :category_id, :as => :check_boxes, collection: Category.all
	    f.input :image, as: :file
	    f.input :meta_keywords
	    f.input :meta_title
	    f.input :meta_tags
	    f.input :meta_description
	    f.input :admin_user_id, :as => :hidden, :value => current_admin_user
	    f.input :published
	  end
	  f.actions
	end

	filter :title
	# filter :description
	filter :published
	# filter :category_id
	filter :updated_at

	action_item :view_site do
    link_to "Add New post", new_admin_blog_path
  end

  action_item :view_site do
    link_to "Add New Category", new_admin_category_path
  end

end
