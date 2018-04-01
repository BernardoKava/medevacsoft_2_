class RemoveCompanyaliasToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :companualias, :string
  end
end
