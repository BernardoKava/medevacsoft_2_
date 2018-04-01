class RemovePatientLnameFromMedevaccase < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :patientLname, :string
  end
end
