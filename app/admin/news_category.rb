ActiveAdmin.register NewsCategory do
	menu false
	permit_params :title, :parent_id, :description

	index do
		column :id
		column :title  	
  	actions
	end

	form do |f|
    f.inputs "News Category Details" do
      f.label :parent
    	f.collection_select(:parent_id, NewsCategory.all, :id, :title, include_blank: 'Select a Category')
      f.input :title
      f.input :description
    end
    f.actions
  end

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


end
