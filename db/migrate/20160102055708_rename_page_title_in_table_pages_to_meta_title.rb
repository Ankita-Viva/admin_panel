class RenamePageTitleInTablePagesToMetaTitle < ActiveRecord::Migration
  def change
  	rename_column :pages, :page_title, :meta_title
  end
end
