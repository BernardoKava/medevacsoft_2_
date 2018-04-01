class AddCompanyaliasToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :companyalias, :string
  end
end
