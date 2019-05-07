class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :author_email
      t.text :content
      t.references :yoyo, foreign_key: true

      t.timestamps
    end
  end
end
