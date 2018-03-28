class AddUserIdToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :user_id, :integer
  end
end
