class AddFieldsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :meta_keywords, :string
    add_column :pages, :meta_tags, :string
  end
end
