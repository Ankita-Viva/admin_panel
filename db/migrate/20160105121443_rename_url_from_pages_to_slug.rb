class RenameUrlFromPagesToSlug < ActiveRecord::Migration
  def change
  	rename_column :pages, :url, :slug
  end
end
