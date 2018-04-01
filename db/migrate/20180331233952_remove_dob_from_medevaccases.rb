class RemoveDobFromMedevaccases < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :dob, :date
  end
end
