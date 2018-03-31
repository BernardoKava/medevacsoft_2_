class AddMissioncompleteToMedevaccases < ActiveRecord::Migration[5.1]
  def change
    add_column :medevaccases, :missioncomplete, :boolean
  end
end
