class WorldAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :worldareas do |t|
      t.string :region, null: false
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
