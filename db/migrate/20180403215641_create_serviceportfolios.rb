class CreateServiceportfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :serviceportfolios do |t|
      t.string :name
      t.string :description
      t.integer :serviceprovider_id

      t.timestamps
    end
  end
end
