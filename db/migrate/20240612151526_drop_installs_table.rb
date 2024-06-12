class DropInstallsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :installs
  end
end
