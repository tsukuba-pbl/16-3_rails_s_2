class CreateFtLayouts < ActiveRecord::Migration
  def change
    create_table :ft_layouts do |t|
      t.string :room_id

      t.timestamps null: false
    end
  end
end
