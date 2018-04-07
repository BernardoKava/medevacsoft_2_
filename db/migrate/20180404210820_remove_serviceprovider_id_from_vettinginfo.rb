class RemoveServiceproviderIdFromVettinginfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :vettinginfos, :serviceprovider_id, :integer
  end
end
