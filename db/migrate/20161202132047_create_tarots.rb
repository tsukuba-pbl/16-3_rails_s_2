class CreateTarots < ActiveRecord::Migration
  def change
    create_table :tarots do |t|
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end
