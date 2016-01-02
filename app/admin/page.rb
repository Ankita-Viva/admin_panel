ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :content, :url, :meta_title, :meta_keywords, :meta_tags, :meta_description, :published
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

  form html: { multipart: true } do |f|
    f.inputs "Blog Details" do
      f.input :title
      f.input :content, :as => :ckeditor
      f.input :url
      f.input :meta_title
      f.input :meta_keywords
      f.input :meta_tags
      f.input :meta_description, :as => :ckeditor
      f.input :published
    end
    f.actions
  end

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
