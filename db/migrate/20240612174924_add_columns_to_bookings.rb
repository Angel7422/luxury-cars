class AddColumnsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :user_id, :integer
    add_column :bookings, :car_id, :integer
    add_column :bookings, :end_date, :datetime
    add_column :bookings, :status, :string
  end
end
