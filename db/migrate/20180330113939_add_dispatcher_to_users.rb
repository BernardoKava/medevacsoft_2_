class AddDispatcherToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dispatcher, :boolean
  end
end
