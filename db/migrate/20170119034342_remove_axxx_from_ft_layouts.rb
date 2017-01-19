class RemoveAxxxFromFtLayouts < ActiveRecord::Migration
  def change
    remove_column :ft_layouts, :room_id, :string
  end
end
