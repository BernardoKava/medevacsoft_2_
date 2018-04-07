class AddServiceproviderIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :serviceprovider_id, :integer
  end
end
