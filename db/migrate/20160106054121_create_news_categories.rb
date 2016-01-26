class CreateNewsCategories < ActiveRecord::Migration
  def change
    create_table :news_categories do |t|
      t.string :title
      t.text :description
      t.integer :parent_id, :default => 0

      t.timestamps null: false
    end
  end
end
