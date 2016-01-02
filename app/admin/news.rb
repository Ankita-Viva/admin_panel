ActiveAdmin.register News do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :title, :description, :excerpt, :category, :image, :meta_keywords, :meta_title, :meta_tags, :meta_description
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
	    f.input :description, :as => :ckeditor
	    f.input :excerpt, :as => :ckeditor
	    f.input :category
	    f.input :image, as: :file
	    f.input :meta_keywords
	    f.input :meta_title
	    f.input :meta_tags
	    f.input :meta_description, :as => :ckeditor
	  end
	  f.actions
	end

end
