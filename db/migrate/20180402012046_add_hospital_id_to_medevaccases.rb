class AddHospitalIdToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :hospital_id, :integer
  end
end
