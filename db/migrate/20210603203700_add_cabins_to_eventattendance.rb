class AddCabinsToEventattendance < ActiveRecord::Migration[6.0]
  def change
    add_column :eventattendances, :cabin_id, :integer
    add_foreign_key :eventattendances, :cabins
    remove_column :eventattendances, :cabin, :string
  end
end
