class AddXxxxToFtItems < ActiveRecord::Migration
  def change
    add_column :ft_items, :deg, :float
  end
end
