class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :name
  		t.integer :age
  		t.integer :phone_no
    end
  end
end
