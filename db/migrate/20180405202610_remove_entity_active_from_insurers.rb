class RemoveEntityActiveFromInsurers < ActiveRecord::Migration[5.1]
  def change
    remove_column :insurers, :entityactive, :boolean
  end
end
