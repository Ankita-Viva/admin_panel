class AddCategoriesToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :category_id, :integer, array: true, default: '{}'    
  end
end
