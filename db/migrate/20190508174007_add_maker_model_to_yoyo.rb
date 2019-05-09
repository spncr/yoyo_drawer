class AddMakerModelToYoyo < ActiveRecord::Migration[5.2]
  def change
    change_table :yoyos do |t|
      t.belongs_to :model, foreign_key: true
    end
  end
end
