class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.boolean :playeravailable, null: false
      t.timestamps
    end
  end
end
