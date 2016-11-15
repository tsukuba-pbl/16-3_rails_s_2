class CreatePlacedFurnitureItems < ActiveRecord::Migration
  def change
    create_table :placed_furniture_items do |t|
      t.references :layout, index: true, foreign_key: true
      t.references :furniture_item, index: true, foreign_key: true
      t.float :x_coordinate_data
      t.float :y_coordinate_data
      t.float :z_coordinate_data
      t.float :a_rotation
      t.float :b_rotation
      t.float :c_rotation

      t.timestamps null: false
    end
  end
end
