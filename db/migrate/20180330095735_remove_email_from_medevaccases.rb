class RemoveEmailFromMedevaccases < ActiveRecord::Migration[5.1]
  def change
    remove_column :medevaccases, :email, :string
  end
end
