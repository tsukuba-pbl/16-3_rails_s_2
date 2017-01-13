class AddRoomIdToUxsers < ActiveRecord::Migration
  def change
    add_column :uxsers, :room_id, :integer
  end
end
