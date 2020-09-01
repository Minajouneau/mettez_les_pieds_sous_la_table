class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :opening_hour
      t.string :closing_hour
      t.boolean :closed
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
