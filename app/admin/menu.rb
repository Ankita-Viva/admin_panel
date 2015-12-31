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

	def name
    location
  end

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
	  f.inputs "Menu Details" do
	  	f.input :title
	  	f.label :location
	    f.collection_select(:location_id, Location.all, :id, :location, :prompt => true)
	  end
	  f.actions
	end

end
