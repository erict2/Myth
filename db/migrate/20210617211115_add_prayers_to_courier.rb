class AddPrayersToCourier < ActiveRecord::Migration[6.0]
  def change
    add_column :couriers, :couriertype, :string
    change_column_null :couriers, :couriertype, false, 'Courier'
    add_column :couriers, :skillsused, :integer
    change_column_null :couriers, :skillsused, false, 0
  end
end
