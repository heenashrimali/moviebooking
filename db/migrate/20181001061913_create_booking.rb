class CreateBooking < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
  		t.integer :seat_limit
  		t.integer :show_id
  		t.integer :user_id
    end
  end
end
