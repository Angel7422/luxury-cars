class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end