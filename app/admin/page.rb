ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :content, :page_title, :url, :meta_description, :published
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	filter :title
	filter :status
  filter :created_at
  filter :updated_at

  index do
    selectable_column
    id_column
    column :title
    column :published
    # column :created_at
    column :updated_at
    actions
  end


end
