class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :scheduled_on
      t.text :description

      t.timestamps
    end
  end
end
