class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :url
      t.integer :parent_menu
      t.string :location

      t.timestamps null: false
    end
  end
end
