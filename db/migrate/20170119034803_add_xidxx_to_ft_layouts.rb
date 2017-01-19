class AddXidxxToFtLayouts < ActiveRecord::Migration
  def change
    add_column :ft_layouts, :room_id, :integer
  end
end
