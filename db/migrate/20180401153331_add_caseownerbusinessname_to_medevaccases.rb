class AddCaseownerbusinessnameToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :caseownercompany, :string
  end
end
