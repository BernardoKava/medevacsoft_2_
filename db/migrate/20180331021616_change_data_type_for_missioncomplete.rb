class ChangeDataTypeForMissioncomplete < ActiveRecord::Migration[5.1]
  def change
    change_column :medevaccases, :missioncomplete, :string
  end
end
