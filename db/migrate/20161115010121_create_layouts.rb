class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.string :nanika
      t.string :hoge

      t.timestamps null: false
    end
  end
end
