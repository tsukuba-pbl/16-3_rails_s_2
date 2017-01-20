class AddXxxxToFurnitureItems < ActiveRecord::Migration
  def change
    add_column :furniture_items, :name, :string
    add_column :furniture_items, :biko, :string
  end
end
