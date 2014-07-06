class AddLockVersionToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :lock_version, :integer, default: 0, null: false
  end
end
