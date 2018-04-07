class CreateStakeholders < ActiveRecord::Migration[5.1]
  def change
    create_table :stakeholders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :relationship
      t.string :patientconsent

      t.timestamps
    end
  end
end
