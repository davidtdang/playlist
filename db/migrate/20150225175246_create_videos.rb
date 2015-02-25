class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :author
      t.string :title
      t.string :link
      t.string :uid

      t.timestamps
    end
  end
end
