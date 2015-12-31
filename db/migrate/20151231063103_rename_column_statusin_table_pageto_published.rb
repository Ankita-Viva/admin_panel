class RenameColumnStatusinTablePagetoPublished < ActiveRecord::Migration
  def change
  	rename_column :pages, :status, :published
  end
end
