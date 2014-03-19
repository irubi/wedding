class AddCoverIdToMarriages < ActiveRecord::Migration
  def change
    add_column :marriages, :cover_id, :integer
  end
end
