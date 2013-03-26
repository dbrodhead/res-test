class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.string :weekday
      t.text :details

      t.timestamps
    end
  end
end
