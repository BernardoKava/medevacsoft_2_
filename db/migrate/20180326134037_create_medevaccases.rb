class CreateMedevaccases < ActiveRecord::Migration[5.1]
  def change
    create_table :medevaccases do |t|
      t.string :patientFname
      t.string :patientLname
      t.date :dob
      t.string :diagnosis
      t.string :treatment
      t.string :catName
      t.date :startDate
      t.date :completionDate
      t.string :toCountry
      t.string :fromCountry
      t.string :currentHospitalName
      t.string :currentHospitalAddress
      t.string :receivingHospitalName
      t.string :receivingHospitalAddress
      t.string :notes

      t.timestamps
    end
  end
end
