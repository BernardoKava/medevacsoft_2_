class CreateInsurers < ActiveRecord::Migration[5.1]
  def change
    create_table :insurers do |t|
      t.string :name
      t.string :companyalias
      t.string :address
      t.string :email
      t.string :phone
      t.string :contactperson
      t.boolean :entityactive

      t.timestamps
    end
  end
end
