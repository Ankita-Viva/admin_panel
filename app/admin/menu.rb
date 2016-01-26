ActiveAdmin.register Menu do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :location_id
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
    column :location do |m|
      loc = Location.find(m.location_id)
      loc.location
    end
    # column :created_at
    column :updated_at
    column "Menu Items" do |site|
      link_to "Menu Items (#{site.menu_items.count})", :controller => "menu_items", :action => "index"#, 'q[menu_id_eq]' => "#{menu.id}"
      # link_to "Menu Items (#{site.menu_items.count})", :controller => "menu_items", :action => "index", 'q[menu_id_eq]' => "#{menu.id}".html_safe
    end
    actions
  end

	form do |f|
	  f.inputs "Menu Details" do
	  	f.input :title
	  	f.label :location
	    f.collection_select(:location_id, Location.all, :id, :location, :prompt => true)
	  end
	  f.actions
	end

  action_item :view_site do
    link_to "Add Menu Items", new_admin_menu_item_path
  end

end
