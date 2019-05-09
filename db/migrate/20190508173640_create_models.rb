class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.references :maker, foreign_key: true

      t.timestamps
    end
  end
end
