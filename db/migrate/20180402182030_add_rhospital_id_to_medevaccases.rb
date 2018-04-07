class AddRhospitalIdToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :rhospital_id, :integer
  end
end
