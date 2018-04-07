class AddEntityactiveToServiceproviders < ActiveRecord::Migration[5.1]
  def change
    add_column :serviceproviders, :entityactive, :boolean
  end
end
