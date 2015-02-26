class AddUserIdAndGroupIdTo < ActiveRecord::Migration
  def change
    add_column :playlists, :user_id, :integer
    add_column :playlists, :group_id, :integer
  end
end
