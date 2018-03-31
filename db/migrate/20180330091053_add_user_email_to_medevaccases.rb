class AddUserEmailToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :email, :string
  end
end
