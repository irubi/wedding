class ConversTypeToScheduals < ActiveRecord::Migration
  def change
    change_column :schedules, :location, :text
  end
end
