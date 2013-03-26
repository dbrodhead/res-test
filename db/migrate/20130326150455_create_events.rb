class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :period
      t.string :trade
      t.string :instructor
      t.text :activity
      t.string :location

      t.timestamps
    end
  end
end
