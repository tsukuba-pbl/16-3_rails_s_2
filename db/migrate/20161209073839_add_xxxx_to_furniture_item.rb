class AddXxxxToFurnitureItem < ActiveRecord::Migration
  def change
    add_column :furniture_items, :image, :string
    add_column :furniture_items, :remove_image, :boolean
    add_column :furniture_items, :image_cache, :string
    add_column :furniture_items, :icon, :string
    add_column :furniture_items, :remove_icon, :boolean
    add_column :furniture_items, :icon_cache, :string
  end
end
