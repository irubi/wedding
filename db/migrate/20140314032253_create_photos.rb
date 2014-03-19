class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.attachment :file
      t.string :desc

      t.timestamps
    end
  end
end
