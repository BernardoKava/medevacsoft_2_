class CreateServiceproviders < ActiveRecord::Migration[5.1]
  def change
    create_table :serviceproviders do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :services
      t.string :contactperson

      t.timestamps
    end
  end
end
