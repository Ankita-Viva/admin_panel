class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
