class AddXxxxToUxsers < ActiveRecord::Migration
  def change
    add_column :uxsers, :zahyo_x, :float
    add_column :uxsers, :zahyo_y, :float
    add_column :uxsers, :zahyo_z, :float
    add_column :uxsers, :offset, :float
  end
end
