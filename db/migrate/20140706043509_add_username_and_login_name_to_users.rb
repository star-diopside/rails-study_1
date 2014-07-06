class AddUsernameAndLoginNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :login_name, :string, null: false
    add_index :users, :login_name, unique: true
  end
end
