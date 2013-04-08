class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :number
      t.string :weekday
      t.time :stime
      t.time :etime

      t.timestamps
    end
  end
end
