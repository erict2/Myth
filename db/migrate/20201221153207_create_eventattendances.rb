class CreateEventattendances < ActiveRecord::Migration[6.0]
  def change
    create_table :eventattendances do |t|
      t.references :event, null: false, foreign_key: true
      t.string :registrationtype, null: false
      t.datetime :registerdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :user, null: false, foreign_key: true
      t.references :character, null: true, foreign_key: true
      t.string :cabin
      t.timestamps
    end
    add_index :eventattendances, [:character_id, :event_id], :unique => true
  end
end
