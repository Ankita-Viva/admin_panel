ActiveAdmin.register Menu do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :url, :parent_menu, :location
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	form do |f|
	  f.inputs "Menu Details" do
	  	f.input :title
	  	f.input :url
	    # f.collection_select(:parent_menu, :menu_id, Menu.all, :id, :title, :prompt => true)
	    # f.input :parent_menu, :collection => Menu.all.map{ |menu| [menu.title, menu.id] }
	    f.label :location
	    f.select(:location, Menu::MENU_LOCATIONS, :prompt => true)
	  end
	  f.actions
	end

end
