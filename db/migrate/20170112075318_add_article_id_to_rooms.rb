class AddArticleIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :article_id, :integer
  end
end
