class AddFieldsToNews < ActiveRecord::Migration
  def change
    add_column :news, :excerpt, :text
    add_column :news, :category, :string
    add_column :news, :meta_keywords, :string
    add_column :news, :meta_title, :string
    add_column :news, :meta_description, :string
    add_column :news, :meta_tags, :string
  end
end
