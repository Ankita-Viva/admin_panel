class AddMetaTagsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :meta_tags, :string
  end
end
