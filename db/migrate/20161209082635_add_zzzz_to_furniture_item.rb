class AddZzzzToFurnitureItem < ActiveRecord::Migration
  def change
    add_column :furniture_items, :width, :float
    add_column :furniture_items, :height, :float
  end
end
