class CreateFtItems < ActiveRecord::Migration
  def change
    create_table :ft_items do |t|
      t.integer :item_id
      t.float :top
      t.float :left
      t.references :ft_layout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
