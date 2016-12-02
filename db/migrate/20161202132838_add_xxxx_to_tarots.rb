class AddXxxxToTarots < ActiveRecord::Migration
  def change
    add_column :tarots, :content2, :string
  end
end
