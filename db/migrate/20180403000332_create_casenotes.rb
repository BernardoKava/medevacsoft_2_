class CreateCasenotes < ActiveRecord::Migration[5.1]
  def change
    create_table :casenotes do |t|
      t.string :casephase
      t.string :notes
      t.integer :medevaccase_id

      t.timestamps
    end
  end
end
