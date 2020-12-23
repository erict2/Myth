class AddCabinToEventAttendance < ActiveRecord::Migration[6.0]
  def change
    add_column :eventattendances, :cabin, :string
  end
end
