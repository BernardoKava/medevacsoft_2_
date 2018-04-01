class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :diagnosis
      t.string :treatment
      t.string :phone
      t.string :email
      t.string :nationality

      t.timestamps
    end
  end
end
