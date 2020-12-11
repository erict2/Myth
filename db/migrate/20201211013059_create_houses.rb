class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.date :createdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :player, null: false, foreign_key: {name: 'thane_id'}
      t.timestamps
    end
  end
end
