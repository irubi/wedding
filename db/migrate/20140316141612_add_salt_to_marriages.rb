class AddSaltToMarriages < ActiveRecord::Migration
  def change
    add_column :marriages, :salt, :string
  end
end
