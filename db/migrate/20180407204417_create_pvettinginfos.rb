class CreatePvettinginfos < ActiveRecord::Migration[5.1]
  def change
    create_table :pvettinginfos do |t|
      t.string :heading
      t.string :notes
      t.integer :serviceprovider_id

      t.timestamps
    end
  end
end
