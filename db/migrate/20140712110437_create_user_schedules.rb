class CreateUserSchedules < ActiveRecord::Migration
  def change
    create_table :user_schedules do |t|
      t.references :user, index: true
      t.references :schedule, index: true

      t.timestamps
      t.foreign_key :users
      t.foreign_key :schedules
    end
    add_index :user_schedules, [:user_id, :schedule_id], unique: true
    drop_table :user_schedule_relations
  end
end
