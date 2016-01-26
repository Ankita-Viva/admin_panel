ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :content, :slug, :meta_title, :meta_keywords, :meta_tags, :meta_description, :published, :parent_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	filter :title
	filter :published
  filter :created_at
  filter :updated_at

  form html: { multipart: true } do |f|
    f.inputs "Blog Details" do
      f.label :parent_page
      f.collection_select(:parent_id, Page.all, :id, :title, include_blank: 'Select Parent Page')
      f.input :title
      f.input :content, :as => :ckeditor
      f.input :slug, :input_html => { :disabled => true } 
      f.input :meta_title
      f.input :meta_keywords
      f.input :meta_tags
      f.input :meta_description
      f.input :published
    end
    f.actions
  end

  index do
    selectable_column
    column :id
    column :title
    column :published
    # column :created_at
    column :updated_at
    actions
  end

end
