class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.string :location
      t.text :desc
      t.integer :marriage_id

      t.timestamps
    end
  end
end
