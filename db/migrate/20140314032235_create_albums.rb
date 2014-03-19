class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :marriage_id
      t.string :title

      t.timestamps
    end
  end
end
