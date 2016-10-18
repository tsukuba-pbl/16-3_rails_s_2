class CreateUxsers < ActiveRecord::Migration
  def change
    create_table :uxsers do |t|
      t.string :name
      t.string :avatar
      t.boolean :remove_avatar
      t.string :avatar_cache

      t.timestamps null: false
    end
  end
end
