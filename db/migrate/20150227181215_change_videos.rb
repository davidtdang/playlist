class ChangeVideos < ActiveRecord::Migration
  def change
    remove_column :videos, :author, :string
    remove_column :videos, :link, :string
    remove_column :videos, :uid, :string
    add_column :videos, :description, :string
    add_column :videos, :thumbnail, :string
    add_column :videos, :videoId, :string
  end
end
