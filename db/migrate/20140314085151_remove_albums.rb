class RemoveAlbums < ActiveRecord::Migration
  def change
    drop_table :albums
    remove_column :photos, :album_id
    add_column :photos, :marriage_id, :integer
  end
end
