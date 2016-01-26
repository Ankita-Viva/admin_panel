ActiveAdmin.register MenuItem do
	menu false
	permit_params :title, :menu_id, :link, :order, :menu_item_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	filter :title
  # filter :location
  filter :created_at

  index do
    selectable_column
    column :id
    column :title
    column :menu
    column :order
    column :updated_at
    actions
  end

	form do |f|
		f.semantic_errors *f.object.errors.keys
	  f.inputs "Menu Item Details" do
	  	
	  	f.label :menu
	    f.collection_select(:menu_id, Menu.all, :id, :title, :prompt => true)
	    f.label :menu_item
	    f.collection_select(:menu_item_id, MenuItem.all, :id, :title, :prompt => true)
	    f.input :title
	    f.input :link
	    # f.label :Page
	    # f.collection_select(:link, Page.all, :slug, :title, :prompt => true)
	    f.input :order
	  end
	  f.actions
	end

end
