class CreateFurnitureItems < ActiveRecord::Migration
  def change
    create_table :furniture_items do |t|

      t.timestamps null: false
    end
  end
end
