class AddMenuItemIdToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :menu_item_id, :integer, default: 0
  end
end
