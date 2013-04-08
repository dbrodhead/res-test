class ChangeEventTable < ActiveRecord::Migration
  def up
    add_column :events, :trade_id, :integer
  end

  def down
    remove_column :events, :trade
  end
end
