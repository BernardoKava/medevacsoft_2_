class AddClientAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :clientadmin, :boolean
  end
end
