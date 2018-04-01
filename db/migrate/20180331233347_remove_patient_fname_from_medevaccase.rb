class RemovePatientFnameFromMedevaccase < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :patientFname, :string
  end
end
