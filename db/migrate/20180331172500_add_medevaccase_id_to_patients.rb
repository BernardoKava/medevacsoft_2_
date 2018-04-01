class AddMedevaccaseIdToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :medevaccase_id, :integer
  end
end
