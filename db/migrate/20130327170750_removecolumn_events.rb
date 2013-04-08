class RemovecolumnEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.remove :date, :date_id, :trade
    end
  end
end
