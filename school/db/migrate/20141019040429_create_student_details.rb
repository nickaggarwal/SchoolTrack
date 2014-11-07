class CreateStudentDetails < ActiveRecord::Migration
  def change
    create_table :student_details do |t|
      t.string :first_name , limit: 50
      t.string :last_name , limit: 50
      t.integer :in_class
      t.string :section
      t.integer :roll_no
      t.integer :admin_no
      t.integer :contact_no
      t.integer :bus_route
      t.timestamps null: false
    end
  end
end
