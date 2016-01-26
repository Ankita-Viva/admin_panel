class AddCategoryIdsToNews < ActiveRecord::Migration
  def change
  	add_column :news, :category_id, :integer, array: true, default: '{}'    
  end
end
