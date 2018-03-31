class RemoveCasestateFromMedevaccases < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :casestate, :string
  end
end
