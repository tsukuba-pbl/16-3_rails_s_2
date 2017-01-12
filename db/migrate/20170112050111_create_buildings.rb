class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :adress
      t.string :remarks

      t.timestamps null: false
    end
  end
end
