class AddCasestateToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :casestate, :string
  end
end
