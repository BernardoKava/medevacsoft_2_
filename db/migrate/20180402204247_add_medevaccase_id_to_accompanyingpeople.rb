class AddMedevaccaseIdToAccompanyingpeople < ActiveRecord::Migration[5.1]
  def change
    add_column :accompanyingpeople, :medevaccase_id, :integer
  end
end
