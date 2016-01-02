class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title
      t.integer :menu_id

      t.timestamps null: false
    end
  end
end
