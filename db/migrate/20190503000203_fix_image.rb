class FixImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :yoyos, :images, :image
  end
end
