class CreateContactpeople < ActiveRecord::Migration[5.1]
  def change
    create_table :contactpeople do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :relationship
      t.string :patientconsent
      t.integer :medevaccase_id

      t.timestamps
    end
  end
end
