class AddCostToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :cost, :float
  end
end
