class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username_string, :string
    add_index :users, :username_string, unique: true
  end
end
