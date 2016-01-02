ActiveAdmin.register MenuItem do
	menu false
	permit_params :title, :menu_id

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
    id_column
    column :title
    column :created_at
    column :updated_at
    actions
  end

	form do |f|
	  f.inputs "Menu Item Details" do
	  	f.input :title
	  	f.label :menu
	    f.collection_select(:menu_id, Menu.all, :id, :title, :prompt => true)
	  end
	  f.actions
	end


end
