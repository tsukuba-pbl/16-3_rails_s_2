class AddImagesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image, :string
  end
end
