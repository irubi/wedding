class CreateMarriages < ActiveRecord::Migration
  def change
    create_table :marriages do |t|
      t.string :m_name
      t.string :f_name
      t.integer :admin_id

      t.timestamps
    end
  end
end
