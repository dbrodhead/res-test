class ChangeEventTable2 < ActiveRecord::Migration
  def up
    add_column :events, :day_id, :integer
  end

  def down
    remove_column :events, :date
  end
end
