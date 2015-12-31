ActiveAdmin.register News do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :title, :description, :image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	filter :title
  filter :created_at

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :updated_at
    actions
  end

	form html: { multipart: true } do |f|
	  f.inputs "News Details" do
	    f.input :title
	    f.input :description
	    f.input :image, as: :file
	  end
	  f.actions
	end

end
