class StudentDetail < ActiveRecord::Base
  validates :first_name , presence: true
  validates :last_name , presence: true
  validates :in_class , presence: true
  validates :section , presence: true
  validates :roll_no , presence: true
  validates :admin_no , presence: true
  validates :contact_no , presence: true
  validates :bus_route , presence: true
end
