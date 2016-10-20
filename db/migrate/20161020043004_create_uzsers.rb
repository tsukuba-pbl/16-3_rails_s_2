class CreateUzsers < ActiveRecord::Migration
  def change
    create_table :uzsers do |t|
      t.string :name
      t.string :name2
      t.boolean :name3

      t.timestamps null: false
    end
  end
end
