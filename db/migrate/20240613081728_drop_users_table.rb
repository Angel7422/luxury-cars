class DropUsersTable < ActiveRecord::Migration[7.1]
  def down
    drop_table :users
  end
end
