class RemoveTreatmentFromMedevaccases < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :treatment, :string
  end
end
