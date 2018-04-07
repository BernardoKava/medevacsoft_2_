class CreateVettinginfos < ActiveRecord::Migration[5.1]
  def change
    create_table :vettinginfos do |t|
      t.string :heading
      t.string :notes
      t.integer :insurer_id
      t.integer :serviceprovider_id

      t.timestamps
    end
  end
end
