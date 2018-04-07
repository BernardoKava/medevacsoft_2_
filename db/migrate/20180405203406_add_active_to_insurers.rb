class AddActiveToInsurers < ActiveRecord::Migration[5.1]
  def change
    add_column :insurers, :active, :string
  end
end
