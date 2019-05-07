class CreateYoyos < ActiveRecord::Migration[5.2]
  def change
    create_table :yoyos do |t|
      t.string :title
      t.text :description
      t.boolean :accepting_offers
      t.binary :image

      t.timestamps
    end
  end
end
