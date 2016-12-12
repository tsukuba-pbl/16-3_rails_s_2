class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.float :width
      t.float :height
      t.string :madori
      t.boolean :remove_madori
      t.string :madori_cache

      t.timestamps null: false
    end
  end
end
