class CreateAccompanyingpeople < ActiveRecord::Migration[5.1]
  def change
    create_table :accompanyingpeople do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :nationality
      t.string :relationship
      t.string :patientconsent

      t.timestamps
    end
  end
end
