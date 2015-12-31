class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.integer :admin_user_id
      t.string :image
      t.string :meta_keywords
      t.string :meta_title
      t.string :meta_description

      t.timestamps null: false
    end
  end
end
