class AddCompanyaliasToServiceproviders < ActiveRecord::Migration[5.1]
  def change
    add_column :serviceproviders, :companyalias, :string
  end
end
