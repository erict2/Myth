class CreateEventattendances < ActiveRecord::Migration[6.0]
  def change
    create_table :eventattendances do |t|
      t.references :event, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.date :registerdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
