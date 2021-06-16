class CreateCouriers < ActiveRecord::Migration[6.0]
  def change
    create_table :couriers do |t|
      t.string :recipient, null: false
      t.string :destination, null: false
      t.string :message, null: false
      t.date :senddate, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :character, null: false, foreign_key: true
      t.timestamps
    end
  end
end
