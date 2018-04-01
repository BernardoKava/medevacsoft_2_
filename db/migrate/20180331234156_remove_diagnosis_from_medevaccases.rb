class RemoveDiagnosisFromMedevaccases < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :diagnosis, :string
  end
end
