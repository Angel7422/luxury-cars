class AddColumnsToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :name, :string
    add_column :cars, :user_id, :integer
    add_column :cars, :address, :string
    add_column :cars, :photo, :xml
    add_column :cars, :model, :string
    add_column :cars, :price, :integer
  end
end
