class AddXbxxToUxsers < ActiveRecord::Migration
  def change
    add_column :uxsers, :room_depth, :float
    add_column :uxsers, :room_width, :float
  end
end
