class RemoveCategoryFromNews < ActiveRecord::Migration
  def change
  	remove_column :news, :category, :string
  end
end
