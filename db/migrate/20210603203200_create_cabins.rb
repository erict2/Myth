class CreateCabins < ActiveRecord::Migration[6.0]
  def change
    create_table :cabins do |t|
      t.string :name, null: false
      t.boolean :playeravailable, null: false
      t.boolean :castavailable, null: false
      t.string :location, null: false
      t.integer :maxplayers, null: false
      t.timestamps
    end
  end
end
