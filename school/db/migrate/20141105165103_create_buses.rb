class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :driver_contact , limit: 10
      t.string :driver_name
      t.integer :no_of_students
      t.string :start_location
      t.string :end_location
      t.timestamps
    end
  end
end
