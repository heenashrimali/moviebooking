class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
    	t.integer :booking_id
  		t.integer :movie_id
  		t.integer :audi_id
    end
  end
end
