class AddLinkToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :link, :string
  end
end
