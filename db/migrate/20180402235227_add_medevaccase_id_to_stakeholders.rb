class AddMedevaccaseIdToStakeholders < ActiveRecord::Migration[5.1]
  def change
    add_column :stakeholders, :medevaccase_id, :integer
  end
end
