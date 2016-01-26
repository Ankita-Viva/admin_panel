class AddParentIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :parent_id, :integer, :default => 0
  end
end
