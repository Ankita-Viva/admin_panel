class AddColumnAdminuseridToNews < ActiveRecord::Migration
  def change
    add_column :news, :admin_user_id, :integer
  end
end
