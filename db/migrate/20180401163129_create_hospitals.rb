class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :phone
      t.string :email
      t.string :info

      t.timestamps
    end
  end
end
